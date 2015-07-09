require 'addressable/template'
require 'rest-client'
require 'json'

module Foaas
  class Client

  	URL = Addressable::Template.new("http://foaas.com/{method}{/name}/{from}{/other}")

    METHODS_ONE_PARAM = [:awesome, :because, :bucket, :bye, :cool, :diabetes, :everyone, :everything, :fascinating, :flying, :life, :pink, :thanks, :this, :tucker, :what, :zayn]
    METHODS_TWO_PARAMS = [:bus, :donut, :caniuse, :chainsaw, :dalton, :king, :linus, :madison, :nugget, :off, :outside, :shakespeare, :you, :xmas, :yoda]
    METHODS_THREE_PARAMS = [:ballmer, :field]

    def method_missing(sym, *args, &block)
        kwargs = {}
        kwargs = args[-1] if args[-1].class == Hash
        if METHODS_TWO_PARAMS.include? sym
          make_request(URL.expand(method: sym, name: args[0], from: args[1]), args[2], i18n=kwargs[:i18n], shoutcloud=kwargs[:shoutcloud])
        elsif  METHODS_ONE_PARAM.include? sym
          make_request(URL.expand(method: sym, from: args[0]), args[1], i18n=kwargs[:i18n], shoutcloud=kwargs[:shoutcloud])
        elsif METHODS_THREE_PARAMS.include? sym
          make_request(URL.expand(method: sym, name: args[0], from: args[1], other: args[2]), args[3], i18n=kwargs[:i18n], shoutcloud=kwargs[:shoutcloud])
        elsif sym == :thing
          make_request(URL.expand(method: args[0], from: args[1]), args[2], i18n=kwargs[:i18n], shoutcloud=kwargs[:shoutcloud])
        else
          super(sym, *args, &block)
        end
    end

    def operations
      make_request(URL.expand(method: :operations), nil)
    end

    def respond_to?(sym, include_private = false)
      METHODS_ONE_PARAM.include?(sym) or METHODS_TWO_PARAMS.include?(sym) or sym == :thing or super(sym, include_private)
    end

    def version(type = nil)
      make_request(URL.expand(method: :version), type)
    end

  	private

  	def make_request(url, type, i18n=nil, shoutcloud=false)
      query_params = {}
      url = url.to_s
      accept_type = case type
        when nil
          :json
        when :text
          'text/plain'
        when :jsonp
          query_params['callback'] = 'fuck' 
          :json
        else
          type
      end

      if i18n
        query_params['i18n'] = i18n
      end

      if shoutcloud
        query_params['shoutcloud'] = nil
      end

      if not query_params.empty?
        url += '?' + query_params.map do |k,v|
          if v
            "#{k}=#{v}"
          else
            k.to_s
          end
        end.join('&')
      end

      response = RestClient.get url, { accept: accept_type }
      response = JSON.parse(response) if type.nil?
      response
  	end
  	
  end
end

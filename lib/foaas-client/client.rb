require 'addressable/template'
require 'rest-client'
require 'json'

module Foaas
  class Client

  	URL = Addressable::Template.new("http://foaas.com/{method}{/name}/{from}{/other}")

    METHODS_ONE_PARAM = [:awesome, :because, :bye, :cool, :diabetes, :everyone, :everything, :fascinating, :flying, :life, :pink, :thanks, :this, :what]
    METHODS_TWO_PARAMS = [:bus, :donut, :caniuse, :chainsaw, :dalton, :king, :linus, :madison, :nugget, :off, :outside, :shakespeare, :you, :xmas, :yoda]
    METHODS_THREE_PARAMS = [:ballmer, :field]

    def method_missing(sym, *args, &block)
        if METHODS_TWO_PARAMS.include? sym
          make_request(URL.expand(method: sym, name: args[0], from: args[1]), args[2])
        elsif  METHODS_ONE_PARAM.include? sym
          make_request(URL.expand(method: sym, from: args[0]), args[1])
        elsif METHODS_THREE_PARAMS.include? sym
          make_request(URL.expand(method: sym, name: args[0], from: args[1], other: args[2]), args[3])
        elsif sym == :thing
          make_request(URL.expand(method: args[0], from: args[1]), args[2])
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

  	def make_request(url, type)
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

      if not query_params.empty?
        url += '?' + query_params.map{|k,v| "#{k}=#{v}"}.join('&')
      end

      response = RestClient.get url, { accept: accept_type }
      response = JSON.parse(response) if type.nil?
      response
  	end
  	
  end
end

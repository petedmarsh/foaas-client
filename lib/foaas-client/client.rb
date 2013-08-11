require 'addressable/template'
require 'rest-client'
require 'json'

module Foaas
  class Client

  	URL = Addressable::Template.new("http://foaas.com/{method}{/name}/{from}")

    METHODS_ONE_PARAM = [:this, :everything, :everyone, :pink, :life, :thanks, :flying, :fascinating]
    METHODS_TWO_PARAMS = [:off, :you, :donut, :shakespeare, :linus, :king, :chainsaw, :outside]

    def method_missing(sym, *args, &block)
        if METHODS_TWO_PARAMS.include? sym
          make_request(URL.expand(method: sym, name: args[0], from: args[1]), args[2])
        elsif  METHODS_ONE_PARAM.include? sym
          make_request(URL.expand(method: sym, from: args[0]), args[1])
        elsif sym == :thing
          make_request(URL.expand(method: args[0], from: args[1]), args[2])
        else
          super(sym, *args, &block)
        end
    end

    def respond_to?(sym, include_private = false)
      METHODS_ONE_PARAM.include?(sym) or METHODS_TWO_PARAMS.include?(sym) or sym == :thing or super(sym, include_private)
    end

  	private

  	def make_request(url, type)
      type = :json unless type
  		type = 'text/plain' if type == :text
      response = RestClient.get url.to_s, { accept: type }
      response = JSON.parse(response) if type == :json
      response
  	end
  	
  end
end

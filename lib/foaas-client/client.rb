require 'addressable/template'
require 'rest-client'
require 'json'

module Foaas
  class Client

  	URL = Addressable::Template.new("http://foaas.com/{method}{/name}/{from}")

    def method_missing(sym, *args)
      case sym
        when :off, :you, :donut, :shakespeare, :linus, :king, :chainsaw, :outside
          make_request(URL.expand(method: sym, name: args[0], from: args[1]), args[2])
        when :this, :everything, :everyone, :pink, :life, :thanks, :flying
          make_request(URL.expand(method: sym, from: args[0]), args[1])
        when :thing
          make_request(URL.expand(method: args[0], from: args[1]), args[2])
        end
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

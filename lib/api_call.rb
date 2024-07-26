require 'net/http'
require 'uri'
require 'json'

class ApiCall
    def initialize(base_url)
      @base_url = base_url
    end
  
    def get(endpoint)
        begin
            url = URI.parse("#{@base_url}#{endpoint}")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = (url.scheme == "https")

            request = Net::HTTP::Get.new(url.request_uri)
            request["accept"] = 'application/json'
            request["X-Authorization"] = 'l7u502p8v46ba3ppgvj5y2aad50lb9'
            
            response = http.request(request)
            JSON.parse(response.body)
        rescue => e
            puts "Error: #{e.message}"
        end
    end
  
end
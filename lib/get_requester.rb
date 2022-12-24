# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
# require 'awesome_print'

class GetRequester
  
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    data = JSON.parse(self.get_response_body)
  end

end

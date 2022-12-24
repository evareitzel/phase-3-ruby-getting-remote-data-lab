# Write your code here
 
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
 
class GetRequester
 
  URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
 
  def get_response_body
    # convert to JSON # resp =
    uri = URI.parse(URL)
    response = NET::HTTP.get_response(uri) # get request
    response.body
  end
 
  def parse_json
    # data =
    # resp = url.get_response_body
#     resp.map { |x| } # arr/obj
  end
 
  #
  # ap data
end
 
 
# Pseudocode
 
# require http
# require URI
# req json
# require awesome_print
 
# class GetRequester
 
#   url =''
 
#   def get_response_body
#     get request(url)
#     url to URI
#     convert to JSON # resp =
#   end
 
#   def parse_json
#     resp = url.get_response_body
#     resp.map { |x| } # arr/obj
#   end
 
#   ap data

####################################

# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
# require 'awesome_print'
 
class GetRequester #(url)
 
  def initialize(url)
    @url = url
  end
  # URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
 
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
 
  def parse_json
    data = JSON.parse(self.get_response_body)
    # data.collect do |item|
    #   item #["name"]
    # end
  end
 
end
 
# GetRequester.new
 
# objects = GetRequester.new
# puts objects.parse_json #.uniq
 
# objects = GetRequester.new.get_response_body # people
# puts objects #.obj.uniq
  # ap data
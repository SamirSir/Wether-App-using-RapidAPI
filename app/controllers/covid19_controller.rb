class Covid19Controller < ApplicationController

require 'uri'
require 'net/http'
require 'openssl'

  def index
    key = 'e0bdf90c57msh1cef662b8ac515ep142845jsn36d5d0dc4025'
    url = 'https://covid-19-data.p.rapidapi.com/help/countries?format=json'
    @allCountry = JSON.parse(get_api_result(key, url))  
  end

  def country
    key = 'e0bdf90c57msh1cef662b8ac515ep142845jsn36d5d0dc4025'
    name = params[:country]
    url = "https://covid-19-data.p.rapidapi.com/country?format=json&name=#{URI.encode(name)}"
    @per_country_response = JSON.parse(get_api_result(key, url))
    
    @data = []
    @country_name = []
    @per_country_response[0].each_with_index do |c, i|

      if c == 0
        @country_name = @country_name.push(c)
      end 

      if i>1 && i<6
        @data = @data.push(c) 
      end      
    end
  end 

  # if the search2 is done to the data base with LIKE query, use following logig
  def all_country
    key = 'e0bdf90c57msh1cef662b8ac515ep142845jsn36d5d0dc4025'
    url = 'https://covid-19-data.p.rapidapi.com/help/countries?format=json'
    all_country = JSON.parse(get_api_result(key, url))

    country_list = []
    all_country.each do |obj|
      item = {}
      item["label"] = obj["country"]
      item["value"] = obj["country"]
      item["name"] = obj["country"]
      country_list.push(item)
    end
    return country_list
  end

  private 

  def get_api_result(key, url)
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri)
    request["x-rapidapi-host"] = uri.host
    request["x-rapidapi-key"] = key

    response = http.request(request).read_body
    return response
  end

end

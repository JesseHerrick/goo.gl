require 'httparty'

class Googl
  include HTTParty
  base_uri "https://www.googleapis.com"
  headers "Content-Type" => "application/json"
 
  def shorten
    post("/urlshortener/v1/url", :body => {:longUrl => @@url}.to_json)["id"]
  end
end

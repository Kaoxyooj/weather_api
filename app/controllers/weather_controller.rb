require "open-uri"
require 'time'
require 'json'

class WeatherController < ApplicationController

  def index
    api_key   = "DARKSKY_API"
    latitude  = "43.038902"
    longitude = "-87.906471"
    date      = "1986-02-11"

    time      = Time.parse("#{date}").to_i

    url       = open("https://api.darksky.net/forecast/#{api_key}/#{latitude},#{longitude},#{time}")
    @content  = JSON.parse(url.read)
  end

end

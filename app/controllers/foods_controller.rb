class FoodsController < ApplicationController
  def index
    search_params = params[:q]
    response = Faraday.get( "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['USDA_API']}&query=#{search_params}")
    @results = JSON.parse(response.body, symbolize_names: true)
    @foods = @results[:foods] #array. Each food item is a hash.
  end
end

class FoodsFacade
  def self.search_foods(query)
    search_params = query
    response = Faraday.get( "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['USDA_API']}&query=#{search_params}")
    data = JSON.parse(response.body, symbolize_names: true)
    {totalHits: data[:totalHits], foods: data[:foods] }
  end
end
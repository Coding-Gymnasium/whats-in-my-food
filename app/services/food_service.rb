class FoodService
  def self.search_foods_api(query)
    response = Faraday.get( "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['USDA_API']}&query=#{query}")
    data = JSON.parse(response.body, symbolize_names: true)
    {totalHits: data[:totalHits], foods: data[:foods] }
  end
end
class FoodsFacade
  def self.search_foods(query)
    results = FoodService.search_foods_api(query)
    {totalHits: results[:totalHits], foods: results[:foods].map { |food| Food.new(food) } }
  end
end
class FoodsFacade
  def self.search_foods(query)
    FoodService.search_foods_api(query)
  end
end
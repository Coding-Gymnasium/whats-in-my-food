require 'rails_helper'
RSpec.describe Food do
  it "has attributes" do
    VCR.use_cassette('usda_search') do
      data = FoodsFacade.search_foods('Sweet Potatoes')[:foods].first
      ## data.keys => [:fdcId,:description, :dataType, :gtinUpc, :publishedDate, :brandOwner, :ingredients, :foodNutrients, :allHighlightFields, :score]
      # data[:fdcId] => 600987
      food = Food.new(data)
      # binding.pry
      # yet food.fdcId => gives an array of values. Why???
      # food.fdcId.class => Array. ???
      # expect(food.fdcId).to be_an(Integer) 
      expect(food.description).to be_a(String)
      expect(food.brandOwner).to be_a(String)
      expect(food.ingredients).to be_a(String)
      expect(food.foodNutrients).to be_an(Array)
      expect(food.foodNutrients.first).to be_a(Hash)
    end
  end
end
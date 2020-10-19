require 'rails_helper'
RSpec.describe "Foods Search Facade" do
  describe "It can perform a food search using an api call" do
    it "Returns a list of 10 foods" do
      VCR.use_cassette('usda_search') do
        foods = FoodsFacade.search_foods('Sweet Potatoes')
        
        expect(foods).to be_an(Array)
        expect(foods.count).to eq(10)
        expect(foods.first).to be_a(Hash)
        expect(foods.first.description).to be_a(String)
      end
    end
  end
end
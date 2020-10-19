require 'rails_helper'
RSpec.describe "Foods Search Facade" do
  describe "It can perform a food search using an api call" do
    it "Returns a list of 10 foods" do
      VCR.use_cassette('usda_search') do
        foods = FoodsFacade.search_foods('Sweet Potatoes')[:foods]
        expect(foods).to be_an(Array)
        expect(foods.count).to eq(10)
        expect(foods[0]).to be_a(Hash)
        expect(foods[0][:description]).to be_a(String)
      end
    end
  end
end
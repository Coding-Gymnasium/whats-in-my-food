require 'rails_helper'

RSpec.describe FoodService do
  describe "It can perform a query through an api call" do
    it "It returns an array of foods as hashes" do
      VCR.use_cassette('usda_search') do
        foods_list = FoodsFacade.search_foods('Sweet Potatoes')
        expect(foods_list).to be_a(Hash)
        expect(foods_list.keys).to eq([:totalHits, :foods])
        expect(foods_list[:totalHits]).to eq(38680)
        expect(foods_list[:foods]).to be_an(Array)
        expect(foods_list[:foods].count).to eq(50)
      end
    end
  end
end
require 'rails_helper'
RSpec.describe Food do
    it "has attributes" do
        data =   {
            "fdcId": 478350,
            "description": "SWEET POTATO",
            "dataType": "Branded",
            "gtinUpc": "085239389508",
            "publishedDate": "2019-04-01",
            "brandOwner": "Target Stores",
            "ingredients": "WATER, WHEAT FLOUR, SWEET POTATO PUREE",
            "foodNutrients": [
                {
                    "nutrientId": 1087,
                    "nutrientName": "Calcium, Ca",
                    "nutrientNumber": "301",
                    "unitName": "MG",
                    "derivationCode": "LCCD",
                    "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                    "value": 17.00000000
                }
            ],
            "allHighlightFields": "<b>Ingredients</b>: WATER, WHEAT FLOUR, <em>SWEET</em> <em>POTATO</em> PUREE, <em>POTATO</em> STARCH, <em>POTATO</em> FLAKES (<em>POTATOES</em>, MONO",
            "score": 975.51294
        }
        food = Food.new(data)

        expect(food.description).to be_a(String)
        expect(food.description).to eq("SWEET POTATO")
        expect(food.gtinUpc).to be_a(String)
        expect(food.gtinUpc).to eq("085239389508")
        expect(food.brandOwner).to be_a(String)
        expect(food.brandOwner).to eq("Target Stores")
        expect(food.ingredients).to be_a(String)
        expect(food.ingredients).to eq("WATER, WHEAT FLOUR, SWEET POTATO PUREE")
    end
end
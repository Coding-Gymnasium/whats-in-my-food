require 'rails_helper'

RSpec.describe 'Welcome Index Page', type: :feature do
  describe 'As a visitor' do
    it "When I visit '/' I see a food search form. A query takes me to '/foods'" do
      visit '/'
      within('.navbar-header') do
        expect(page).to have_content("Ingredient Search")
      end

      within("#bs-example-navbar-collapse-1") do
        expect(page).to have_button('Search')
        fill_in :q, with: "sweet potatoes"
        click_on 'Search'
        expect(current_path).to eq('/foods')
      end
    end
  end
end
require 'rails_helper'
RSpec.describe "Foods Seach Results Index Page" do
  describe "As a Visitor" do
    
    it "Sees food's details" do
      VCR.use_cassette('usda_search', record: :new_episodes) do
        visit '/'
        within("#bs-example-navbar-collapse-1") do
          expect(page).to have_button('Search')
          fill_in :q, with: "sweet potatoes"
          click_on 'Search'
        end

        within(first('.food')) do
          within(first('.code')) do
            expect(page).to have_content('070560951975')
          end
          within(first('.description')) do
            expect(page).to have_content('SWEET POTATOES')
          end
          within(first('.brand')) do
            expect(page).to have_content('The Pictsweet Company')
          end
          within(first('.ingredients')) do
            expect(page).to have_content('SWEET POTATOES')
          end      
        end
      end
    end
  end
end

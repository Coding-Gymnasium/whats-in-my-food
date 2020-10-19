require 'rails_helper'
RSpec.describe "Foods Seach Results Index Page" do
  describe "As a Visitor" do
    before :each do
        visit '/'
        fill_in :q, with: "sweet potatoes"
        click_on 'Search'
    end
    it "Sees food's details" do
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
          expect(page).to have_content('The Pictsweet Company')
        end      
      end
    end
  end
end

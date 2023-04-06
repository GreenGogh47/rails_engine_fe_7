require "rails_helper"

RSpec.describe "Merchant Show Page" do
  describe "As a visitor" do
    describe "when I visit '/merchants/:id'" do
      before(:each) do
        visit "/merchants/1"
      end

      it "shows the merchant's name" do
        expect(page).to have_content("Schroeder-Jerde")
      end

      it "shows a list of items that merchant sells" do
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
      end
    end
  end
end
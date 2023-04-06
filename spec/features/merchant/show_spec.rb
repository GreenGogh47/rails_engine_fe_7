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

      xit "shows a list of items that merchant sells" do

      end
    end
  end
end
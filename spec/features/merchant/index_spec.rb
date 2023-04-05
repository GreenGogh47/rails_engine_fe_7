require "rails_helper"

RSpec.describe "Merchant Index Page" do
  describe "As a visitor" do
    describe "when I visit '/merchants'" do
      it "shows a list of merchants by name" do
        visit "/merchants"

        expect(page).to have_content("Merchants")
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
        expect(page).to have_content("Willms and Sons")
      end

      xit "their name links to their show page" do

      end
    end
  end
end
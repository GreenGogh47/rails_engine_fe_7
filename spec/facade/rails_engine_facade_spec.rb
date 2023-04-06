require "rails_helper"

RSpec.describe RailsEngineFacade do
  before(:each) do
    @facade = RailsEngineFacade.new
  end

  it "exists" do
    expect(@facade).to be_a(RailsEngineFacade)
  end

  describe "instance methods" do
    describe "#merchants" do
      it "returns all merchants" do
        expect(@facade.merchants).to be_a(Array)
        expect(@facade.merchants.first).to be_a(Merchant)
      end
    end

    describe "#items" do
      it "returns all items for a given merchant" do
        expect(@facade.items("1")).to be_a(Array)
        expect(@facade.items("1").first).to be_a(Item)
      end
    end
  end
end
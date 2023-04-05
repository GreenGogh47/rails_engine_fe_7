require "rails_helper"

RSpec.describe RailsEngineFacade do
  before(:each) do
    @facade = RailsEngineFacade.new
  end

  it "exists" do
    expect(@facade).to be_a(RailsEngineFacade)
  end

  it "returns all merchants" do
    expect(@facade.merchants).to be_a(Array)
    expect(@facade.merchants.first).to be_a(Merchant)
  end
end
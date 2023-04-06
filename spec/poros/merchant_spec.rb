require "rails_helper"

RSpec.describe Merchant do
  before(:each) do
    @jerde = {
      "id": "1",
      "type": "merchant",
      "attributes": {
          "name": "Schroeder-Jerde"
      }
    }

    @merchant = Merchant.new(@jerde)
  end

  it "exists" do
    expect(@merchant).to be_a(Merchant)
    expect(@merchant.id).to eq("1")
    expect(@merchant.type).to eq("merchant")
    expect(@merchant.name).to eq("Schroeder-Jerde")
  end
end
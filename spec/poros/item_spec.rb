require "rails_helper"

RSpec.describe Item do
  before(:each) do
    item = {
      "id": "4",
      "type": "item",
      "attributes": {
          "name": "Item Nemo Facere",
          "description": "Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
          "unit_price": 42.91,
          "merchant_id": 1
      }
    }

    @item1 = Item.new(item)
  end

  it "exists" do
    expect(@item1).to be_a(Item)
    expect(@item1.id).to eq("4")
    expect(@item1.type).to eq("item")

    @item1.attributes.each do |attribute|
      expect(attribute.name).to eq("Schroeder-Jerde")
      expect(attribute.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(attribute.unit_price).to eq(42.91)
      expect(attribute.merchant_id).to eq(1)
    end

  end
end
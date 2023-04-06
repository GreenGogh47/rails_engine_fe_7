require "rails_helper"

RSpec.describe RailsEngineService do
  describe "class methods" do
    describe ".merchants" do
      it "returns all expected attributes and data types" do
        @api_call_result = RailsEngineService.new.merchants

        expect(@api_call_result).to be_a(Hash)

        @merchants = @api_call_result[:data].first

        expect(@merchants).to have_key(:id)
        expect(@merchants[:id]).to be_a(String)
        expect(@merchants[:id]).to eq("1")

        expect(@merchants).to have_key(:type)
        expect(@merchants[:type]).to be_a(String)
        expect(@merchants[:type]).to eq("merchant")

        expect(@merchants).to have_key(:attributes)
        expect(@merchants[:attributes]).to be_a(Hash)

        expect(@merchants[:attributes]).to have_key(:name)
        expect(@merchants[:attributes][:name]).to be_a(String)
        expect(@merchants[:attributes][:name]).to eq("Schroeder-Jerde")
      end
    end

    describe ".items" do
      it "returns all expected attributes and data types" do
        @api_call_result = RailsEngineService.new.items("1")

        expect(@api_call_result).to be_a(Hash)

        @items = @api_call_result[:data].first

        expect(@items.keys).to eq([:id, :type, :attributes])
        expect(@items[:id]).to be_a(String)
        expect(@items[:id]).to eq("4")

        expect(@items[:type]).to be_a(String)
        expect(@items[:type]).to eq("item")

        expect(@items[:attributes]).to be_a(Hash)

        expect(@items[:attributes]).to have_key(:name)
        expect(@items[:attributes][:name]).to be_a(String)
        expect(@items[:attributes][:name]).to eq("Item Nemo Facere")
      end
    end
  end
end
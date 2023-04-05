require "rails_helper"

RSpec.describe RailsEngineService do
  before(:each) do
    @api_call_result = RailsEngineService.new.merchants
  end

  it "returns all expected attributes and data types" do
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
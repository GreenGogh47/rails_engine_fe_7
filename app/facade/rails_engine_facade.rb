class RailsEngineFacade
  def initialize
    @service = RailsEngineService.new
  end

  def merchants
    require 'pry'; binding.pry
    @service.merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end
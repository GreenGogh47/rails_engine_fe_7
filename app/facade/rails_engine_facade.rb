class RailsEngineFacade
  def initialize
    @service = RailsEngineService.new
  end

  def merchants
    @service.merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end
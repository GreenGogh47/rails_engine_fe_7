class RailsEngineFacade
  def initialize
    @service = service
  end

  def merchants
    @service.merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  private

  def service
    @service ||= RailsEngineService.new
  end
end
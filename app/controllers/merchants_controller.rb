class MerchantsController < ApplicationController
  def index
    @merchants = facade.merchants
  end
  
  def show
    @merchant = facade.merchants.find { |merchant| merchant.id == params[:id] }
  end

  def facade
    @facade ||= RailsEngineFacade.new
  end
end
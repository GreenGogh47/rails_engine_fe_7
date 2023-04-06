class MerchantsController < ApplicationController
  def index
    @merchants = facade.merchants
  end
  
  def show
    require 'pry'; binding.pry
    @merchant = facade.merchants.find { |merchant| merchant.id == params[:id] }
    @items = facade.items
  end

  def facade
    @facade ||= RailsEngineFacade.new
  end
end
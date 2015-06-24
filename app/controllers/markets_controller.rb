class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    id = params.permit(:id)[:id]
    @market = Market.find(id)
    @vendors = @market.vendors
  end
end

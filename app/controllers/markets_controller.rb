class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def search
    # I wasn't sure how else to handle this.
    if (params.permit(:q)[:q].to_i <= Market.last.id)
      @query = params.permit(:q)[:q]
    end
  end

  def show
    id = params.permit(:id)[:id]
    @market = Market.find(id)
    @vendors = @market.vendors
  end
end #class

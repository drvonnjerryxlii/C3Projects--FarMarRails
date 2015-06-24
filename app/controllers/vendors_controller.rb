class VendorsController < ApplicationController
  def search
    # I wasn't sure how else to handle this.
    if (params.permit(:q)[:q].to_i <= Vendor.last.id)
      @q = params.permit(:q)[:q]
    end
  end
end # class

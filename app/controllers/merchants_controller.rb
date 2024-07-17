class MerchantsController < ApplicationController
  def index
    facade = MerchantsFacade.new
    @merchants = facade.all_merchants
  end

  def show
    @merchant_id = params[:id]
    facade = MerchantFacade.new(@merchant_id)
    @merchant = facade.merchant
  end
end
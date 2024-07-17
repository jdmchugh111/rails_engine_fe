class MerchantFacade
  def initialize(merchant_id)
    @merchant_id = merchant_id
  end

  def merchant
    service = MerchantService.new(@merchant_id)

    info = service.get_merchant[:data]
    items = service.merchant_items[:data]
    
    Merchant.new(info, items)
  end
end
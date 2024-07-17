class MerchantsFacade
  def all_merchants
    service = MerchantsService.new

    json = service.merchants
    json[:data]
  end
end
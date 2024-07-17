class MerchantService 
  def initialize(merchant_id)
    @merchant_id = merchant_id
  end

  def conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_merchant
    get_url("/api/v1/merchants/#{@merchant_id}")
  end

  def merchant_items
    get_url("/api/v1/merchants/#{@merchant_id}/items")
  end

end
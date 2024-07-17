class ItemService 
  def initialize(item_id)
    @item_id = item_id
  end

  def conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_item
    get_url("/api/v1/items/#{@item_id}")
  end
end

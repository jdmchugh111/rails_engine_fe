class ItemsService
  def conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def items
    get_url("/api/v1/items")
  end
end
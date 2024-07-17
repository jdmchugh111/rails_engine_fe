class Item
  attr_reader :name,
              :description,
              :unit_price
  def initialize(info)
    @name = info[:attributes][:name]
    @description = info[:attributes][:description]
    @unit_price = info[:attributes][:unit_price]
  end
end
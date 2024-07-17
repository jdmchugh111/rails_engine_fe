class Merchant
  attr_reader :name, :items
  def initialize(info, items)
    @name = info[:attributes][:name]
    @items = items
  end
end
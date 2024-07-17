class ItemFacade
  def initialize(item_id)
    @item_id = item_id
  end

  def item
    service = ItemService.new(@item_id)

    info = service.get_item[:data]
    
    Item.new(info)
  end
end
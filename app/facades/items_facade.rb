class ItemsFacade
  def all_items
    service = ItemsService.new

    json = service.items
    json[:data]
  end
end
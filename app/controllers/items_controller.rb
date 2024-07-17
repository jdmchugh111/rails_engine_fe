class ItemsController < ApplicationController
  def index
    facade = ItemsFacade.new
    @items = facade.all_items
  end

  def show
    @item_id = params[:id]
    facade = ItemFacade.new(@item_id)
    @item = facade.item
  end
end
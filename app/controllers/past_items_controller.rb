class PastItemsController < ApplicationController
  def index
    @items = Item.all
  end
end

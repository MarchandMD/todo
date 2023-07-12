class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)

    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  def delete
  end

  private

  def items_params
    params.permit(:description)
  end
end

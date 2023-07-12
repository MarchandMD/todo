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

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path
  end

  private

  def items_params
    params.permit(:id, :description, :status)
  end
end

class ItemsController < ApplicationController
  def index
    @items = if params.include? :search
               Item.partial_match(params[:search])
             elsif params.include? :sort
               Item.order(params[:sort])
             else
               Item.where(created_at: Time.current.all_day)
             end
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
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
    @item = Item.find(params[:id])
    @item.update(items_params)

    redirect_to root_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path
  end

  private

  def items_params
    params.require(:item).permit(:id, :description, :status)
  end
end

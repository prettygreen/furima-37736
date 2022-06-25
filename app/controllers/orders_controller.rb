class OrdersController < ApplicationController

  def index
    @orders_addresses = OrdersAddresses.new
  end

  def create
    @item = Item.find(params[:id])
    @orders_addresses = OrdersAddresses.new(orders_addresses_params)
    if @orders_addresses.save
      redirect_to root_path
    else
      render :index
    end
  end

private
  def orders_addresses_params
    params.require(:orders_addresses).permit(:postcode, :region_id, :city, :block, :building, :phone_number, :order).merge(user: current_user.id, item: params[:item_id])
  end

end

class OrdersController < ApplicationController

  def index
    @orders = Order.all
    @addresses = Address.all
  end

  def create
  end


end

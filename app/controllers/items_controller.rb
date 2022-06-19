class ItemsController < ApplicationController
  def index
    #@items = Item.all
    #商品一覧機能の際に実装するため今はコメントアウトしておく
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :text, :category_id, :condition_id, :postage_id, :region_id, :shipping_id,
                                 :price).merge(user_id: current_user.id)
  end
end

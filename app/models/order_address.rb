class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id,:item_id, :postcode, :region_id, :city, :block, :building, :phone_number

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postcode
    validates :region_id,    numericality: { other_than: 0, message: "can't be blank" }
    validates :city
    validates :block
    validates :phone_number, format: { with: /\A[0-9]+\z/ }
  end
  
  
  
  
  
  
  
  
  
  
  
  #validates :user_id,         presence: true
  #validates :item_id,         presence: true
  #validates :postcode,     presence: true
  #validates :region_id,    numericality: { other_than: 0, message: "can't be blank" }
  #validates :city,         presence: true
  #validates :block,        presence: true
  #validates :building     
  #validates :phone_number, format: { with: /\A[0-9]+\z/ }
  #validates :order_id,        presence: true

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postcode: postcode, region_id: region_id, city: city, block: block, building: building, phone_number: phone_number)
    #Item.create(name: name, text: text, category_id: category_id, condition_id: condition_id, postage_id: postage_id, region_id: region_id, shipping_id: shipping_id, price: price, user_id: current_user.id, image:image)
  end
end
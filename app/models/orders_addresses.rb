class OrdersAddresses
  include ActiveModel::Model
  attr_accessor :user,:item, :postcode, :region_id, :city, :block, :building, :phone_number, :order

  #validates :user,         presence: true
  #validates :item,         presence: true
  validates :postcode,     presence: true
  validates :region_id,    numericality: { other_than: 1, message: "can't be blank" }
  validates :city,         presence: true
  validates :block,        presence: true
  #validates :building,     
  validates :phone_number, format: { with: ^0\d{9,10}$ }
  #validates :order,        presence: true

  def save
    @orders = Orders.create(user: user, item: item)
    @addresses = Addresses.create(postcode: postcode, region_id: region_id, city: city, block: block, building: building, phone_number: phone_number, order: order)
  end
end
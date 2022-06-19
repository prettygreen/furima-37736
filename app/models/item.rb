class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :postage
  belongs_to :region
  belongs_to :shipping

  has_one_attached :image

  validates :image,        presence: true
  validates :name,         presence: true
  validates :text,         presence: true
  validates :category_id,  numericality: { other_than: 1, message: "can't be blank" }
  validates :condition_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :postage_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :region_id,    numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_id,  numericality: { other_than: 1, message: "can't be blank" }
  validates :price,        presence: true
  validates :price,        numericality: true
  validates :price,        inclusion: { in: 300..9999999 }
  validates :price,        format: { with: /\A[0-9]+\z/ }

  # **先々の実装内容であるため、現時点ではコメントアウトしておく。**
  #belongs_to :user
  #has_one :order
end

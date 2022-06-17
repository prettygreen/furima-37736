class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :postage
  belongs_to :region
  belongs_to :shipping

  #validates :image,        presence: true

  has_one_attached :image

  # **先々の実装内容であるため、現時点ではコメントアウトしておく。**
  #belongs_to :user
  #has_one :order
end

class Item < ApplicationRecord


  #validates :image,        presence: true

  has_one_attached :image

  # **先々の実装内容であるため、現時点ではコメントアウトしておく。**
  #belongs_to :user
  #has_one :order
end

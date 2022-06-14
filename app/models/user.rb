class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,        presence: true
  validates :last_name,       presence: true
  validates :first_name,      presence: true
  validates :last_name_kana,  presence: true
  validates :first_name_kana, presence: true
  validates :birthday,        presence: true
  validates :password,        format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :last_name,       format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :first_name,      format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :last_name_kana,  format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }

  # **先々の実装内容であるため、現時点ではコメントアウトしておく。**
  # has_many :items
  # has_many :orders 
end

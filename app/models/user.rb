class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :snsposts
  has_many :comments
  has_many :weights
  has_one_attached :image

  validates :nickname, length: { maximum: 10, message: "は10文字以下にしてください" }

  # half_width_alphanumeric = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i
  # validates :password, presence: true, on: :create, format: { with: half_width_alphanumeric, message: "に半角英数字を使用してください" }
end

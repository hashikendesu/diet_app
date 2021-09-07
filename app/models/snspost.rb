class Snspost < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_one_attached :image
end

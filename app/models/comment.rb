class Comment < ApplicationRecord
  belongs_to :snspost
  belongs_to :user
  has_one_attached :image
end

class Comment < ApplicationRecord
  belongs_to :snspost
  belongs_to :user
end

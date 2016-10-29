class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  default_scope -> {order(created_at: :desc)} #descending order of posts
end
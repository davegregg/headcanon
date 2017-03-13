class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :slug
  validates   :title, presence: true,
                      uniqueness: true,
                      length: {maximum: 255}
  validates   :body,  presence: true
  validates   :slug,  required: false,
                      uniqueness: true,
                      length: {maximum: 255}
end

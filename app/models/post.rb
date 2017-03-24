class Post < ApplicationRecord
  belongs_to :user

  validates   :slug,  required: false
  validates_uniqueness_of :slug,  scope: :user
  validates   :title, presence: true
  validates_uniqueness_of :title, scope: :user
  validates   :body,  presence: true
  validates   :user,  presence:  true

  mount_uploader :featured_image, FeaturedImageUploader

  default_scope { order(created_at: :desc) }

  extend FriendlyId
  friendly_id :slug
end

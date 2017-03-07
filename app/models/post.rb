class Post < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: true,
                    length: {maximum: 255}
  validates :body,  presence: true
  validates :slug,  required: false
end

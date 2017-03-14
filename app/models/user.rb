class User < ApplicationRecord
  has_many :posts, dependent: :restrict_with_error

  has_secure_password
  has_secure_token

  validates :name,  presence: true
  validates :email, presence: true,
                    uniqueness: true
end

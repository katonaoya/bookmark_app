class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, format: { with: /[a-z]+/ }

  has_many :mybooks
end
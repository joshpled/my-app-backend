class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :pets
  has_many :items, through: :pets
end

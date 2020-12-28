class Pet < ApplicationRecord
  has_many :assignments
  has_many :items, through: :assignments
  belongs_to :user
end

class Item < ApplicationRecord
    has_many :assignments
    has_many :pets, through: :assignments
end

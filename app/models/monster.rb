class Monster < ApplicationRecord
    has_many :items, class_name: "item", foreign_key: "reference_id"
end

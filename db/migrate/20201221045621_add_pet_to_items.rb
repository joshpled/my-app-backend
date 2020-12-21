class AddPetToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :pet, null: false, foreign_key: true
  end
end

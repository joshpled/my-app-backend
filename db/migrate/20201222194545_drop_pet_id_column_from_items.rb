class DropPetIdColumnFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :pet_id
  end
end

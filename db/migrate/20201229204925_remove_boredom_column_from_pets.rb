class RemoveBoredomColumnFromPets < ActiveRecord::Migration[6.0]
  def change
    remove_column :pets, :boredom
  end
end

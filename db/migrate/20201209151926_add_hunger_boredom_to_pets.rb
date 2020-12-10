class AddHungerBoredomToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :hunger, :integer
    add_column :pets, :boredom, :integer
  end
end

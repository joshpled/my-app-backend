class AddEnergyToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :energy, :integer, default: 100
  end
end

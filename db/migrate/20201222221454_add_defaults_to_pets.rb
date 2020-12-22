class AddDefaultsToPets < ActiveRecord::Migration[6.0]
  def change
    change_column :pets, :hunger, :integer, :default => 100
    change_column :pets, :health, :integer, :default => 100
    change_column :pets, :boredom, :integer, :default => 100
  end
end

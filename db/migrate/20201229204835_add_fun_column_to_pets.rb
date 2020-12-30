class AddFunColumnToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :fun, :integer, default: 100
  end
end

class AddQuantityToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :quantity, :integer
  end
end

class AddRupeesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rupees, :integer
  end
end

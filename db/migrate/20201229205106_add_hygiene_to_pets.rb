class AddHygieneToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :hygiene, :integer, default: 100
  end
end

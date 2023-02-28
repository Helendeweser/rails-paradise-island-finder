class ChangeColumnInIslands < ActiveRecord::Migration[7.0]
  def change
    remove_column :islands, :location
    add_column :islands, :description, :string
  end
end

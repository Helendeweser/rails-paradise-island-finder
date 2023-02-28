class ChangeDescriptionToTextInIslands < ActiveRecord::Migration[7.0]
  def change
    change_column :islands, :description, :text
  end
end

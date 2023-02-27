class CreateIslands < ActiveRecord::Migration[7.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :location
      t.float :size
      t.float :price

      t.timestamps
    end
  end
end

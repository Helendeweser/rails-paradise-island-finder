class AddUserIdToIsland < ActiveRecord::Migration[7.0]
  def change
    add_reference :islands, :user, foreign_key: true
  end
end

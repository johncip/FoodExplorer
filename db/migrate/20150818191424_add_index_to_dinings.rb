class AddIndexToDinings < ActiveRecord::Migration
  def change
    add_index :dinings, [:restaurant_id, :user_id], :unique => true
  end
end

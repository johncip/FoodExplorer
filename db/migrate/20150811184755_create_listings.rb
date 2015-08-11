class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :restaurant, index: true, foreign_key: true
      t.references :list, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :favorite, null: false, default: false

      t.timestamps null: false
    end

    add_index :listings, [:restaurant_id, :list_id], :unique => true 
  end
end

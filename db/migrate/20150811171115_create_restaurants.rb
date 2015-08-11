class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :yelp_id, null: false
      t.string :name, null: false

      t.string :city, null: false
      t.string :state, null: false
      t.string :zip
      t.string :address
      t.string :hood

      t.timestamps null: false
    end
  end
end

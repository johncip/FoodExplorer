class AlterRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :url, :string
    add_column :restaurants, :image_url, :string
    add_column :restaurants, :rating, :float
    add_column :restaurants, :rating_img_url, :string
    add_column :restaurants, :is_closed, :boolean

    add_index :restaurants, :rating
    add_index :restaurants, :yelp_id, unique: true
  end
end

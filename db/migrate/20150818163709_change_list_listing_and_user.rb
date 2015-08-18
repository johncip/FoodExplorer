class ChangeListListingAndUser < ActiveRecord::Migration
  def change
    add_column :lists, :description, :text
    add_column :lists, :private, :boolean, default: false, null: false
    add_column :lists, :ord, :integer, default: 0, null: false
    add_column :listings, :ord, :integer, default: 0, null: false

    add_column :users, :description, :string
    add_column :users, :location, :string
    add_column :users, :image_url, :string
    add_column :users, :guest, :boolean, default: false, null: false
  end
end

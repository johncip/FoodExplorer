class AddDefaultValueToFavorite < ActiveRecord::Migration
  def change
    change_column :lists, :favorite, :boolean, default: false
  end
end

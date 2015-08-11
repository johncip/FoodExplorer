class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title, null: false
      t.boolean :favorite, null: false
      
      t.timestamps null: false
    end

    add_index :lists, :title
  end
end

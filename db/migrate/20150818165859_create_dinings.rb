class CreateDinings < ActiveRecord::Migration
  def change
    create_table :dinings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.boolean :visited, default: false, null: false
      t.boolean :favorite, default: false, null: false
      t.text :notes, default: "", null: false

      t.timestamps null: false
    end

    remove_column :listings, :favorite, :boolean, default: false
  end
end

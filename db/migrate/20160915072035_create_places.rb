class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.string :location
      t.text :description
      t.float :rating
      t.float :entry_price

      t.timestamps null: false
    end
  end
end

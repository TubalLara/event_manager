class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :direction
      t.string :url
      t.string :postal_code

      t.timestamps null: false
    end
  end
end

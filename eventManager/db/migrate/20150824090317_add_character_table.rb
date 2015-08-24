class AddCharacterTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :introduction
      t.belongs_to :user
      t.belongs_to :organization
      t.timestamps null: false
    end
  end
end

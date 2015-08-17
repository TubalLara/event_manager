class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :introduction
      t.belongs_to :place
      t.timestamps null: false
    end
  end
end

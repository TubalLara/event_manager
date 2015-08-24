class AddOrganizationTable < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.string :url
      t.timestamps null: false
    end
  end
end

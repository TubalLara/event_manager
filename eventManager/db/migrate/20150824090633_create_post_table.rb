class CreatePostTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :user
      t.belongs_to :organization
      t.belongs_to :event
      t.belongs_to :character
      t.belongs_to :place      
      t.timestamps null: false
    end
  end
end

class CreateAssignedCharacterTable < ActiveRecord::Migration
  def change
    create_table :assigned_characters do |t|
      t.belongs_to :event
      t.belongs_to :character
    end
  end
end

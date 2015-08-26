class AddCreatorIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :creator_id, :integer
  end
end

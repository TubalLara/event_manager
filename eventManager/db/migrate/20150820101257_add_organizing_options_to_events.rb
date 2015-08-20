class AddOrganizingOptionsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :is_secret, :boolean
  	add_column :events, :creator_id, :integer

  end
end

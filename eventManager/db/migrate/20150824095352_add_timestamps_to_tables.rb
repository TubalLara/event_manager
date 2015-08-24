class AddTimestampsToTables < ActiveRecord::Migration
  def change
    add_column :assigned_characters, :created_at, :datetime, null: false
    add_column :assigned_characters, :updated_at, :datetime, null: false
    add_column :user_organizations, :created_at, :datetime, null: false
    add_column :user_organizations, :updated_at, :datetime, null: false
  end
end

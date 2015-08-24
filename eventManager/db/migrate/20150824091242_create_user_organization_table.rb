class CreateUserOrganizationTable < ActiveRecord::Migration
  def change
    create_table :user_organizations do |t|
      t.belongs_to :organization
      t.belongs_to :user
    end
  end
end

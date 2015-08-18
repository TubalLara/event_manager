class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    remove_column :users, :password
    remove_column :users, :admin
  end
end

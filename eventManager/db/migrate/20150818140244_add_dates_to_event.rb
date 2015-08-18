class AddDatesToEvent < ActiveRecord::Migration
  def change
  	change_column :events, :begin_date, :datetime
  	change_column :events, :finish_date, :datetime
  end
end

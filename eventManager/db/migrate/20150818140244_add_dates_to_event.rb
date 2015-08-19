class AddDatesToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :begin_date, :datetime
  	add_column :events, :finish_date, :datetime
  end
end

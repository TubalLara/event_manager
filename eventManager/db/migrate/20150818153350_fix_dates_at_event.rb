class FixDatesAtEvent < ActiveRecord::Migration
  def change
  	change_column :events, :begin_date, :date
  	change_column :events, :finish_date, :date
  end
end

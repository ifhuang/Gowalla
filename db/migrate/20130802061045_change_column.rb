class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :gowalla_total_checkins, :latitude, :float
  	change_column :gowalla_total_checkins, :longitude, :float
  end
end

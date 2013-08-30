class AddGmapsToGowallaTotalCheckins < ActiveRecord::Migration
  def change
    add_column :gowalla_total_checkins, :gmaps, :boolean

  end
end

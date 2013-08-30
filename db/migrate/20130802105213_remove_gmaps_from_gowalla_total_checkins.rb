class RemoveGmapsFromGowallaTotalCheckins < ActiveRecord::Migration
  def up
    remove_column :gowalla_total_checkins, :gmaps
      end

  def down
    add_column :gowalla_total_checkins, :gmaps, :boolean
  end
end

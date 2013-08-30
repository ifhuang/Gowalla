class RemoveCityFromGowallaTotalCheckins < ActiveRecord::Migration
  def up
    remove_column :gowalla_total_checkins, :city
      end

  def down
    add_column :gowalla_total_checkins, :city, :string
  end
end

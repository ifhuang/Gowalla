class RemoveCountryFromGowallaTotalCheckins < ActiveRecord::Migration
  def up
    remove_column :gowalla_total_checkins, :country
      end

  def down
    add_column :gowalla_total_checkins, :country, :string
  end
end

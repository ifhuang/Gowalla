class AddCountryToGowallaTotalCheckins < ActiveRecord::Migration
  def change
    add_column :gowalla_total_checkins, :country, :string

  end
end

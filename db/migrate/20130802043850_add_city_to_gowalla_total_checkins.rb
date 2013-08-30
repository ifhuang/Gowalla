class AddCityToGowallaTotalCheckins < ActiveRecord::Migration
  def change
    add_column :gowalla_total_checkins, :city, :string

  end
end

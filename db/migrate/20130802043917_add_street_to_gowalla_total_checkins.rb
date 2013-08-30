class AddStreetToGowallaTotalCheckins < ActiveRecord::Migration
  def change
    add_column :gowalla_total_checkins, :street, :string

  end
end

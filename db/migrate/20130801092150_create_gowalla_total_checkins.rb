class CreateGowallaTotalCheckins < ActiveRecord::Migration
  def change
    create_table :gowalla_total_checkins do |t|
      t.string :user
      t.string :check_in_time
      t.string :latitude
      t.string :longitude
      t.string :location_id

      t.timestamps
    end
  end
end

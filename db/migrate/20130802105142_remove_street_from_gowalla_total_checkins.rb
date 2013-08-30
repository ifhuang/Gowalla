class RemoveStreetFromGowallaTotalCheckins < ActiveRecord::Migration
  def up
    remove_column :gowalla_total_checkins, :street
      end

  def down
    add_column :gowalla_total_checkins, :street, :string
  end
end

class CreateGowallaEdges < ActiveRecord::Migration
  def change
    create_table :gowalla_edges do |t|
      t.string :user1
      t.string :user2

      t.timestamps
    end
  end
end

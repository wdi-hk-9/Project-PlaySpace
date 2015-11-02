class CreatePlayspaces < ActiveRecord::Migration
  def change
    create_table :playspaces do |t|
      t.string :name
      t.text :address
      t.string :district
      t.string :region
      t.boolean :bike_path
      t.boolean :merry_go_round
      t.boolean :play_structure
      t.boolean :seesaw
      t.boolean :slide
      t.boolean :swing
      t.boolean :carpark
      t.boolean :snack_shop
      t.boolean :wc

      t.timestamps null: false
    end
  end
end

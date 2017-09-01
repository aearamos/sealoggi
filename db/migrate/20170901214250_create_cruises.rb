class CreateCruises < ActiveRecord::Migration[5.1]
  def change
    create_table :cruises do |t|
      t.string :ship
      t.string :project
      t.string :field
      t.string :location_start
      t.string :location_end
      t.datetime :date_start
      t.datetime :date_end
      t.string :forecast
      t.string :responsible
      t.string :crew
      t.string :comment
      t.integer :points

      t.timestamps
    end
  end
end

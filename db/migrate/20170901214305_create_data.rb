class CreateData < ActiveRecord::Migration[5.1]
  def change
    create_table :data do |t|
      t.string :type
      t.float :latitude
      t.float :longitude
      t.integer :point
      t.integer :value
      t.integer :depth
      t.string :comment
      t.string :plot

      t.timestamps
    end
  end
end

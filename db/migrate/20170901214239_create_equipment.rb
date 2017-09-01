class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :type
      t.string :model
      t.string :year
      t.string :last_calibrated
      t.string :company
      t.string :comment

      t.timestamps
    end
  end
end

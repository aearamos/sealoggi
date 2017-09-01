class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :sponsor
      t.string :institution
      t.string :field
      t.string :photo
      t.string :responsible
      t.datetime :date_start
      t.datetime :date_end
      t.integer :budget
      t.integer :participant
      t.string :members

      t.timestamps
    end
  end
end

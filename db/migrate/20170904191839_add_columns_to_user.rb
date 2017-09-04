class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :title, :string
    add_column :users, :institution, :string
    add_column :users, :topic, :string
    add_column :users, :field, :string
    add_column :users, :photo, :string
  end
end

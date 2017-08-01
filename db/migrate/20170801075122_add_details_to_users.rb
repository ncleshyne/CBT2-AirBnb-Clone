class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fullname, :string
    add_index :users, :fullname, unique: true
    add_column :users, :phone, :integer
    add_column :users, :address, :text
    add_column :users, :description, :text
  end
end

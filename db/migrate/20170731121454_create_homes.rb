class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :title
      t.string :location
      t.text :about
      t.integer :price

      t.timestamps
    end
  end
end

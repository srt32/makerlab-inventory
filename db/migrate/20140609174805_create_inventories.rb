class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name
      t.string :location
      t.boolean :stock

      t.timestamps
    end
  end
end

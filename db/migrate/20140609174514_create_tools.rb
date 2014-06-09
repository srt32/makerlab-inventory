class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.string :location
      t.integer :quantity
      t.boolean :available

      t.timestamps
    end
  end
end

class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :email
      t.integer :tool_id

      t.timestamps
    end
  end
end

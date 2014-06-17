class AddImageToInventories < ActiveRecord::Migration
 def self.up
    add_attachment :inventories, :inventory_image
  end

  def self.down
    remove_attachment :inventories, :inventory_image
  end
end

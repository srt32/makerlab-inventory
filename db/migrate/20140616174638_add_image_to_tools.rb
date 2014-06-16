class AddImageToTools < ActiveRecord::Migration
  
  def self.up
    add_attachment :tools, :tool_image
  end

  def self.down
    remove_attachment :tools, :tool_image
  end

end

class Inventory < ActiveRecord::Base
  validates :name, presence: true
  validates :location, presence: true
  
  has_attached_file :inventory_image, styles:{
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  do_not_validate_attachment_file_type :inventory_image

  attr_accessor :delete_asset
  before_validation { self.inventory_image.clear if self.delete_asset == '1' }

  # searchable do
  #   text :name
  # end

end

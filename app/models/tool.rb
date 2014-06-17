class Tool < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy

  validates :name,        presence: true
  validates :location,    presence: true

  has_attached_file :tool_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  do_not_validate_attachment_file_type :tool_image

  attr_accessor :delete_asset
  before_validation { self.tool_image.clear if self.delete_asset == '1' }
  
  def available?
    quantity > checkouts
  end

  # searchable do
  #   text :name
  # end
end

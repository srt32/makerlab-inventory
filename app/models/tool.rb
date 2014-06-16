class Tool < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy

  validates :name,        presence: true
  validates :location,    presence: true

  has_attached_file :tool_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  searchable do
    text :name
  end
end

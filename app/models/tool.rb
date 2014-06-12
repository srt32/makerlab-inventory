class Tool < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy

  validates :name,        presence: true
  validates :location,    presence: true

  searchable do
    text :name
  end
end

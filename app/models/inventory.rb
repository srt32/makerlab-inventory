class Inventory < ActiveRecord::Base
  validates :name, presence: true
  validates :location, presence: true
  
  searchable do
    text :name
  end

end

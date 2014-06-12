class Inventory < ActiveRecord::Base
  # searchable do
  #   string :name
  # end

   # attr_accessor :name,
  	# 			  :location

  validates :name, presence: true
  validates :location, presence: true
  
end

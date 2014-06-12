class Tool < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy

  # searchable do
  #   string :name
  # end

  # attr_accessor :name,
  # 				:location

  validates :name, presence: true

end

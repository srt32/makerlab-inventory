class Tool < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy
end

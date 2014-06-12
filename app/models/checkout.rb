class Checkout < ActiveRecord::Base
  belongs_to :tool

  # attr_accessor :email
  
  validates :email, presence: true

end
class Tool < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy

  searchable do
    string :name
  end
end

class Inventory < ActiveRecord::Base
  searchable do
    string :name
  end
end

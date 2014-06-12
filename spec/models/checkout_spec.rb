require 'rails_helper'

RSpec.describe Checkout, :type => :model do
  it { should belong_to(:tool).touch(true) }
end

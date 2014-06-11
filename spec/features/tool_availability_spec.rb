require 'spec_helper'

describe "tool availability", type: :feature do
  
  it "checks out tool" do
    create(:tool)
    visit '/'
    click_link 'Show'
    fill_in 'Email', with: 'lauren.mosenthal@gmail.com'
    click_on 'Create Checkout'
    expect(page).to have_content "You successfully checked this tool out"
  end

end
require 'spec_helper'

describe "searching", type: :feature do
  
  it "searches for tool" do
    create(:tool)
    visit '/'
    fill_in '#search', with: 'hammer'
    expect(page).to have_content "hammer"
  end

   it "searches for inventory" do
    create(:tool)
    visit '/'
    fill_in '#search', with: 'marker'
    expect(page).to have_content "marker"
  end

end
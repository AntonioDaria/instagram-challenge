require 'rails_helper'

RSpec.feature "View pictures", type: :feature do

  pending "Can submit pictures and view them" do
    visit "/pics/new"
    fill_in "pic_title", with: "testtitle1"
    fill_in "pic_description", with: "testdescription1"
    click_button 'btn btn-info'
    expect(page).to have_content("testtitle1")
  end

end

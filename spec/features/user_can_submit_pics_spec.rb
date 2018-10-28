require 'rails_helper'

RSpec.feature "View pictures", type: :feature do

    it "User can sign up" do
    visit "/users/sign_up"
    fill_in "", with: ""
    fill_in "", with: ""
    click_button 'sign_up'
    expect(page).to have_content("")
  end

  pending "Can submit pictures and view them" do
    visit "/pics/new"
    fill_in "pic_title", with: "testtitle1"
    fill_in "pic_description", with: "testdescription1"
    click_button 'btn btn-info'
    expect(page).to have_content("testtitle1")
  end

  pending "Can check that the newest pics appears first" do
    visit "/pics/new"
    fill_in "pic_title", with: "testtitle1"
    fill_in "pic_description", with: "testdescription1"
    click_button 'btn btn-info'
    visit "/pic/new"
    fill_in "pic_title", with: "testtitle2"
    fill_in "pic_description", with: "testdescription2"
    click_button 'btn btn-info'
    expect(page).to have_content("testtitle1 " + " " + "testtitle2")
 end

end

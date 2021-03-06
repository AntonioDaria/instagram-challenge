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
    visit "/users/sign_up"
    fill_in "user_email", with: "user@gmail.com"
    fill_in "user_password", with: "userpassword"
    fill_in "user_password_confirmation", with: "userpasswordconfirmation"
    click_button 'sign_up'
    click_link "gram-it"
    fill_in "pic_title", with: "testtitle1"
    fill_in "pic_description", with: "testdescription1"
    click_button 'btn btn-info'
    fill_in "pic_title", with: "testtitle2"
    fill_in "pic_description", with: "testdescription2"
    click_button 'btn btn-info'
    expect(page).to have_content("testtitle2 " + " " + "testtitle1")
 end

end

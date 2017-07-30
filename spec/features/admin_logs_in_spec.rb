require "rails_helper"

feature "Admin logs in" do
  scenario "logs in" do
    admin = FactoryGirl.create(:admin_user)
    visit admin_path

    fill_in :email, with: admin.email
    fill_in :password, with: admin.password

    click_on "Login"
    expect(page).to have_content("New Entry")
  end
end

require "rails_helper"

feature "Admin logs in" do
  scenario "logs in" do
    admin = FactoryGirl.create(:admin_user)
    visit root_path(as: admin)

    debugger
    click_on "Logout"
    expect(page).not_to have_content("Logout")
  end
end

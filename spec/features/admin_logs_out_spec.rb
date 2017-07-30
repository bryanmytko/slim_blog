require "rails_helper"

feature "Admin logs in" do
  scenario "logs in" do
    log_in_as_admin

    click_on "Logout"
    expect(page).not_to have_content("Logout")
  end
end

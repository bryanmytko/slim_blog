require "rails_helper"

feature "Admin logs in" do
  scenario "logs in" do
    log_in_as_admin
    expect(page).to have_content("New Entry")
  end
end

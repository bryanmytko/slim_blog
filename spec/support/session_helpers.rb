def log_in_as_admin
  admin = FactoryGirl.create(:admin_user)
  visit admin_path

  fill_in :email, with: admin.email
  fill_in :password, with: admin.password

  click_on "Login"
end

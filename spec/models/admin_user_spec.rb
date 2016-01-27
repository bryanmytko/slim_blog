require "rails_helper"

RSpec.describe AdminUser, type: :model do
  it "should have a valid factory" do
    expect(FactoryGirl.create(:admin_user))
      .to be_valid
  end

  it "is invalid without an email" do
    admin_user = FactoryGirl.build(:admin_user, email: nil)
    expect(admin_user).to_not be_valid
  end

  it "is invalid without a proper email" do
    admin_user = FactoryGirl.build(:admin_user, email: "bademailformat")
    expect(admin_user).to_not be_valid
  end

  it "is invalid without a password" do
    admin_user = FactoryGirl.build(:admin_user, password: nil)
    expect(admin_user).to_not be_valid
  end

  it "is invalid with a short password" do
    admin_user = FactoryGirl.build(:admin_user, password: "123")
    expect(admin_user).to_not be_valid
  end
end

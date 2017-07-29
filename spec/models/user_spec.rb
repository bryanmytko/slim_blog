require "rails_helper"

RSpec.describe User, type: :model do
  it "should have a valid factory" do
    expect(FactoryGirl.create(:user))
      .to be_valid
  end

  it "is invalid without an email" do
    user = FactoryGirl.build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "is invalid without a proper email" do
    user = FactoryGirl.build(:user, email: "bademailformat")
    expect(user).to_not be_valid
  end

  it "is invalid without a password" do
    user = FactoryGirl.build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it "is invalid with a short password" do
    user = FactoryGirl.build(:user, password: "123")
    expect(user).to_not be_valid
  end
end

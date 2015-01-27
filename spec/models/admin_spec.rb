require "rails_helper"

RSpec.describe Admin, type: :model do
  it "should have a valid factory" do
    expect(FactoryGirl.create(:admin))
      .to be_valid
  end

  it "is invalid without an email" do
    admin = FactoryGirl.build(:admin, email: nil)
    expect(admin).to_not be_valid
  end

  it "is invalid without a proper email" do
    admin = FactoryGirl.build(:admin, email: "bademailformat")
    expect(admin).to_not be_valid
  end

  it "is invalid without a password" do
    admin = FactoryGirl.build(:admin, password: nil)
    expect(admin).to_not be_valid
  end

  it "is invalid with a short password" do
    admin = FactoryGirl.build(:admin, password: "123")
    expect(admin).to_not be_valid
  end
end

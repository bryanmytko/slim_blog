require "rails_helper"

RSpec.describe Post, type: :model do
  it "should have a valid factory" do
    expect(FactoryGirl.create(:post))
      .to be_valid
  end

  it "is invalid without a title" do
    post = FactoryGirl.build(:post, title: nil)
    expect(post).to_not be_valid
  end

  it "is invalid without content" do
    post = FactoryGirl.build(:post, content: nil)
    expect(post).to_not be_valid
  end

  it "is invalid without an author" do
    post = FactoryGirl.build(:post, author: nil)
    expect(post).to_not be_valid
  end
end

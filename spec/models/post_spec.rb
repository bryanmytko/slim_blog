require "rails_helper"

RSpec.describe Post, type: :model do
  it "has a valid factory" do
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

  it "is invalid without a slug" do
    post = FactoryGirl.build(:post, slug: nil)
    expect(post).to_not be_valid
  end

  it "is invalid with a non-unique slug" do
    old_post = FactoryGirl.create(:post, slug: "test")
    new_post = FactoryGirl.build(:post, slug: "test")

    expect(new_post).to_not be_valid
  end
end

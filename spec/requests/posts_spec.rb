require "rails_helper"

RSpec.describe PostsController do
  describe "GET show" do
    let(:post) { FactoryGirl.create(:post) }

    it "has a 200 status code" do
      get "/posts/" + post.slug
      expect(response.status).to eq(200)
    end
  end
end

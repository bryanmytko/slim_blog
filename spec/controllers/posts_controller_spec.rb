require "rails_helper"

RSpec.describe PostsController do
  describe "GET show" do
    let(:post) { FactoryGirl.create(:post) }

    it "has a 200 status code" do
      get :show, id: post.slug
      expect(response.status).to eq(200)
    end

    it "should find a post by its slug" do
      get :show, id: post.slug
      expect(assigns(:post)).to eq(post)
    end

    it "renders the :show view" do
      get :show, id: post.slug
      expect(response).to render_template(:show)
    end
  end
end

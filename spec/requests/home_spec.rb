require "rails_helper"

RSpec.feature "Home controller", :type => :request do
  describe "before authentication" do
    it "it redirects to auth without current user" do
      get "/"
      expect(response).to redirect_to("/users/sign_in")
    end
  end

  describe "after authentication" do
    before do
      log_in_user
    end

    it "renders index once authenticated" do
      get "/"
      expect(response).to render_template(:index)
    end

    it "has a successful http status" do
      get "/"
      expect(response).to have_http_status(:success)
    end

    it "renders the tag_page" do
      get "/home/tag_page"
      expect(response).to render_template(:tag_page)
    end
  end
end

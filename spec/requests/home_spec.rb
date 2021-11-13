require "rails_helper"

RSpec.describe "Home controller", :type => :request do

  before do
    log_in_user
  end

  it "it redirects to auth without current user" do
    get "/"
    expect(response).to render_template(:index)
  end

end




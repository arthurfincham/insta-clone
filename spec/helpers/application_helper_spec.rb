require 'rails_helper'

describe ApplicationHelper do
  describe "helper methods" do

    it "id2username returns username" do
      user = FactoryBot.create(:user)
      expect(helper.id2username(1)).to eq 'joeblogs'
    end

    it "comment2username returns username" do
      user = FactoryBot.create(:user)
      expect(helper.comment2username(1)).to eq "joeblogs"
    end

    it "already_liked returns true if post has been liked by user" do
      user = FactoryBot.create(:user)
      post = FactoryBot.create(:post)
      like = FactoryBot.create(:like)
      allow(helper).to receive(:current_user).and_return(user)
      expect(helper.already_liked(post)).to eq true
      end
  end
end

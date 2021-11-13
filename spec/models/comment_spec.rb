require "rails_helper"

RSpec.describe Comment, :type => :model do
  before(:all) do
    @user = create(:user)
    @post = create(:post)
    @comment1 = create(:comment)
  end

  it "is valid with valid attributes" do
    expect(@comment1).to be_valid
  end

  it "is not valid without a user_id" do
    comment2 = build(:comment, user_id: nil)
    expect(comment2).to_not be_valid
  end

  it "is not valid without a post_id" do
    comment3 = build(:comment, post_id: nil)
    expect(comment3).to_not be_valid
  end
end

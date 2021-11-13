require "rails_helper"

RSpec.describe Like, :type => :model do
  before(:all) do
    @user = create(:user)
    @post = create(:post)
    @like1 = create(:like)
  end

  it "is valid with valid attributes" do
    expect(@like1).to be_valid
  end

  it "is not valid without a user_id" do
    like2 = build(:like, user_id: nil)
    expect(like2).to_not be_valid
  end

  it "is not valid without a post_id" do
    like3 = build(:like, post_id: nil)
    expect(like3).to_not be_valid
  end
end

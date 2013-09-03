require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :user => "User",
      :email => "Email",
      :password => "Password",
      :turf => 1,
      :statiegeld => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

require 'spec_helper'

describe "users/index.html.haml" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :login => "Login",
        :email => "Email",
        :time_zone => "Time Zone",
        :first_name => "First Name",
        :middle_initial => "Middle Initial",
        :last_name => "Last Name",
        :sex => "Sex",
        :admin => false
      ),
      stub_model(User,
        :login => "Login",
        :email => "Email",
        :time_zone => "Time Zone",
        :first_name => "First Name",
        :middle_initial => "Middle Initial",
        :last_name => "Last Name",
        :sex => "Sex",
        :admin => false
      )
    ])
  end

  it "renders a list of users" do
    render :template => 'users/index', :layout => 'layouts/application'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time Zone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Middle Initial".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2

    rendered.should be_valid_xhtml
  end
end

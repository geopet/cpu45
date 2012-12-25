require 'spec_helper'

describe "admin/users/show.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login => "Login",
      :email => "Email",
      :time_zone => "Time Zone",
      :first_name => "First Name",
      :middle_initial => "Middle Initial",
      :last_name => "Last Name",
      :sex => "Sex",
      :admin => false
    ))
  end

  it "renders attributes in <p>" do
    render :template => 'admin/users/show', :layout => 'layouts/application'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time Zone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Middle Initial/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)

    rendered.should be_valid_markup
  end
end

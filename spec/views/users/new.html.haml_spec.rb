require 'spec_helper'

describe "users/new.html.haml" do
  before(:each) do
    assign(:user, stub_model(User,
      :login => "MyString",
      :email => "MyString",
      :time_zone => "MyString",
      :first_name => "MyString",
      :middle_initial => "MyString",
      :last_name => "MyString",
      :sex => "MyString",
      :admin => false
    ).as_new_record)
  end

  it "renders new user form" do
    render :template => 'users/new', :layout => 'layouts/application'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_time_zone", :name => "user[time_zone]"
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_middle_initial", :name => "user[middle_initial]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_sex", :name => "user[sex]"
      assert_select "input#user_admin", :name => "user[admin]"
    end

    rendered.should be_valid_xhtml
  end
end

require 'spec_helper'

describe "users/edit.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login => "MyString",
      :email => "MyString",
      :time_zone => "MyString",
      :first_name => "MyString",
      :middle_initial => "MyString",
      :last_name => "MyString",
      :sex => "MyString",
      :admin => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_time_zone", :name => "user[time_zone]"
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_middle_initial", :name => "user[middle_initial]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_sex", :name => "user[sex]"
      assert_select "input#user_admin", :name => "user[admin]"
    end
  end
end

require 'spec_helper'

describe "info/course_description.html.haml" do
  it 'renders' do
    render :template => 'info/course_description', :layout => 'layouts/application'

    rendered.should be_valid_markup
  end
end

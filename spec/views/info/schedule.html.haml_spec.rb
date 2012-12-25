require 'spec_helper'

describe "info/schedule.html.haml" do
  it 'renders' do
    render :template => 'info/schedule', :layout => 'layouts/application'

    rendered.should be_valid_markup
  end
end

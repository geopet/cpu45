require 'spec_helper'

describe "info/overview.html.haml" do
  it 'renders' do
    render :template => 'info/overview', :layout => 'layouts/application'

    rendered.should be_valid_markup
  end
end

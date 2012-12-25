require 'spec_helper'

describe "info/directions.html.haml" do
  it 'renders' do
    render :template => 'info/directions', :layout => 'layouts/application'

    rendered.should be_valid_markup
  end
end

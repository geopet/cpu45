require 'spec_helper'

describe "info/aid_stations.html.haml" do
  it 'renders' do
    render :template => 'info/aid_stations', :layout => 'layouts/application'

    rendered.should be_valid_markup
  end
end

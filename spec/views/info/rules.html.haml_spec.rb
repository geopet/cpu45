require 'spec_helper'

describe "info/rules.html.haml" do
  it 'renders' do
    render :template => 'info/rules', :layout => 'layouts/application'

    rendered.should be_valid_markup
  end
end

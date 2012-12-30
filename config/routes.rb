Cpu45::Application.routes.draw do

  # If we get a leading "www.", delete it.  If we get a trailing ".com",
  # turn it into a ".org".  These should be rare enough that there's no
  # point in doing this in apache, nginx or middleware.

  constraints(:host => /(^www\.cpu45)|(cpu45\.com$)/) do
    match "(*x)" => redirect { |_, request|
      URI.parse(request.url).tap do |url|
        url.host.sub!(/^www\./, '')
        url.host.sub!(/\.com$/, '.org')
        url
      end.to_s
    }
  end

  %w(overview aid_stations course_description directions rules
                                                       schedule).each do |page|
    get page => "info##{page}"
  end

  devise_for :users

  namespace :admin do
    resources :users
  end

  root :to => 'info#overview'
end

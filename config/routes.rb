Cpu45::Application.routes.draw do
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

require 'bundler/capistrano'

set :default_environment, {
  'PATH' => "/home/ctm/.rvm/gems/ruby-1.9.3-p125/bin:/home/ctm/.rvm/bin:/home/ctm/.rvm/rubies/ruby-1.9.3-p125/bin:$PATH",
  'RUBY_VERSION' => 'ruby 1.8.7',
  'GEM_HOME'     => '/home/ctm/.rvm/gems/ruby-1.9.3-p125',
  'GEM_PATH'     => '/home/ctm/.rvm/gems/ruby-1.9.3-p125',
  'BUNDLE_PATH'  => '/home/ctm/.rvm/gems/ruby-1.9.3-p125'
}

default_run_options[:pty] = true

set :application, "cpu45"
set :repository,  "git@github.com:ctm/cpu45.git"

set :scm, :git
set :user, 'cpu45'

role :web, 'cpu45.org'
role :app, 'cpu45.org'
role :db,  'cpu45.org', :primary => true
# role :db,  "your slave db-server here"

ssh_options[:forward_agent] = true
set :branch, 'master'
set :deploy_via, :remote_cache
set :git_enable_submodules, 1

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

require 'bundler/capistrano'

set :rvm_ruby_string, 'ruby-1.9.3-p327'

require 'rvm/capistrano'

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

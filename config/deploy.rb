set :application, "Alexandru Bumbacea CV"
set :repository,  "git@bitbucket.org:abumbacea/cv.git"

set :scm, :git
set :deploy_via,  :remote_cache
set :copy_exclude, [".git"]
set :deploy_to, "/var/www/my.cv/"
set :app_path,    ""
set :web_path,    ""
set :use_sudo,    false
set :public_children, []

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "white.linuxin.ro"                          # Your HTTP server, Apache/etc
role :app, "white.linuxin.ro"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

ssh_options[:forward_agent] = true

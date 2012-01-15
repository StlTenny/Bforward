set :application, "bforward"
set :repository,  "."
set :deploy_to, "/var/www/html/apps/bforward"

set :scm, :git
set :deploy_via, :copy

set :location, "ec2-107-22-194-84.compute-1.amazonaws.com"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, location                          # Your HTTP server, Apache/etc
role :app, location                         # This may be the same as your `Web` server
role :db,  location, :primary => true # This is where Rails migrations will run

set :normalize_asset_timestamps, false #To stop ugly error messages in assets

set :user, "thinds"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "thinds.key")] 

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
# another comment line
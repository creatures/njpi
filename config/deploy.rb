# ------------------------------------------------------------------------------
# Configuration

lock "3.4.0"

set :application, "newjerseyparanormalinvestigations.com"
set :stage, "production"
set :use_sudo, false
set :build_dir, "build"
set :ssh_login, "deploy@app.pixels-and-bits.com"
set :deploy_dir, "/ebs/sites/#{fetch(:application)}/current"


# ------------------------------------------------------------------------------
# Deploy

namespace :deploy do

  desc "Build and deploy middleman project"
  task :middleman do
    invoke 'middleman:build'
    invoke 'middleman:deploy'
  end

end

# ------------------------------------------------------------------------------
# Middleman

namespace :middleman do

  desc "Run build utility"
  task :build do
    run_locally do
     execute "middleman build"
    end
  end

  desc "Push"
  task :deploy do
    run_locally do
     execute "scp -r #{fetch(:build_dir)}/* #{fetch(:ssh_login)}:#{fetch(:deploy_dir)}"
    end
  end

end

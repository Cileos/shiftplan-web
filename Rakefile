namespace :landing do
  desc 'Build landing page using middleman'
  task :build do
    system 'bundle exec middleman build'
  end

  desc 'Upload landing page to mett'
  task :upload => :build do
    system 'rsync -avz ./build/ niklas@lanpartei.de:/home/www/clockwork-landing/pages/'
  end

  desc 'clean up build'
  task :clean do
    system 'rm -r ./build'
  end
end

namespace :assets do
  desc 'Precompile assets'
  task :precompile do
    sh "jekyll build  --config _config.yml,_config-#{ENV['env']}.yml"
  end
end
Static Site
============


##Setup:##
1. `$ git clone https://github.com/we-are-altitude/static-base.git`
3. `$ bundle install`

##Launch A Local Server:##
`$ jekyll server --config _config.yml,_config-local.yml`

Then simply go to http://localhost:4000

##Build:##
 `$ jekyll build --config _config.yml,_config-$['env'].yml`
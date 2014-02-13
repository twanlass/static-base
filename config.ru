#\ -s puma

require 'rack/contrib/try_static'
require 'rack/contrib/not_found'
require 'rack/rewrite'
require 'rack/ssl'

use Rack::SSL
use Rack::Rewrite do
  # Legacy - redirect all product links to sg app
  r301 %r{/i/(.*)}, 'https://app.simplegoods.co/i/$1'
  r301 %r{/embed/(.*)}, 'https://app.simplegoods.co/embed/$1'
  # Legacy - redirect old embed js urls
  r301 %r{/embed.js}, 'https://d3cir4unl8h07a.cloudfront.net/assets/external/embed.js'
  r301 %r{/simple-goods.css}, 'https://d3cir4unl8h07a.cloudfront.net/assets/external/simple-goods.css'
end

use Rack::TryStatic, 
    :root => "public",
    :urls => %w[/],
    :try => ['index.html', '/index.html']
    
run Rack::NotFound.new('public/404/index.html')
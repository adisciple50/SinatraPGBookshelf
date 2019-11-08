# from - https://github.com/mkdynamic/omniauth-facebook/blob/master/example/config.ru

require 'bundler/setup'
require 'omniauth-facebook'
require './app.rb'

use Rack::Session::Cookie, secret: 'abc123'

use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end
# https://github.com/tobmatth/rack-ssl-enforcer
require 'rack/ssl-enforcer'

use Rack::SslEnforcer
set :session_secret, 'asdfa2342923422f1adc05c837fa234230e3594b93824b00e930ab0fb94b'

#Enable sinatra sessions
use Rack::Session::Cookie, :key => '_rack_session',
    :path => '/',
    :expire_after => 2592000, # In seconds
    :secret => settings.session_secret

run Sinatra::Application
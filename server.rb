require 'sinatra/base'

require_relative 'helpers'
require_relative 'routing/secrets'

class HomeDashboard < Sinatra::Base

  set :root, File.dirname(__FILE__)

  enable :sessions

  helpers Sinatra::HomeDashboard::Helpers

  register Sinatra::HomeDashboard::Routing::Pocket

end

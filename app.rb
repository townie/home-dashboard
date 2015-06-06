require 'sinatra/base'

require_relative 'routing/home'

class HomeDashboard < Sinatra::Base

  set :root, File.dirname(__FILE__)

  enable :sessions

  register Sinatra::HomeDashboard::Routing::Home

end

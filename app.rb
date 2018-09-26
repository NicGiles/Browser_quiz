
require 'sinatra/base'

class Browser_quiz < Sinatra::Base

  enable :sessions
  set :session_secret, "nothing"

  get '/' do
    erb(:homepage)
  end

  post '/startquiz' do
      erb(:startquiz)
    end

    post '/sportsquiz' do
erb(:sportsquiz)
    end

  end

require 'sinatra/base'

class App < Sinatra::Application
  TASKS = []

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
    TASKS << params[:new_task]
    redirect '/'
  end
end
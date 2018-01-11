require 'sinatra/base'
require 'json'
require 'sinatra/flash'

require_relative 'DataMapperSetup'

class GamePlatform < Sinatra::Base
  data_mapper_setup
  enable :sessions
  set :session_secret, 'super secret'
  register Sinatra::Flash

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end


  get '/users/new' do
    erb(:signup)
  end

  post '/users' do
    user = User.create(email: params[:email],
            username: params[:username],
            first_name: params[:first_name],
            last_name: params[:last_name],
            password: params[:password],
            password_confirm: params[:password_confirm])
    if user.save
      session[:user_id] = user.id
      redirect '/'
    else
      flash.next[:errors] = user.errors.full_messages
      redirect('/users/new')
    end
  end



  post '/login' do
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect '/'
    else
      flash.next[:errors] = ['The email or password is incorrect']
      redirect '/users/new'
    end
  end

   post '/logout' do
    session[:user_id] = nil
    flash.keep[:notice] = 'goodbye!'
    redirect '/'
  end

  get '/' do
    erb :homepage
  end

  get '/keyboard_fighter' do
    erb(:'/gamesView/keyboard_fighter')
  end
  

end

require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    use Rack::Flash
    set :session_secret, "password_security"
  end

  get "/" do
    erb :welcome
  end

  get "/login" do
    erb :login
  end

  post "/login" do
    user = User.find_by(username: params[:username].downcase)

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.username}"
    else
      # rack flash error message
      redirect '/login'
    end
  end

  get "/signup" do
    erb :signup
  end

  post "/signup" do

    user = User.new(params[:user])
    user.status = "Just joined the party!"

    if user.save
      redirect '/login'
    else
      redirect '/failure'
    end
  end

  get "/logout" do
    session.clear
    flash[:notice] = "You have successfully logged out."

    redirect "/"
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end

end

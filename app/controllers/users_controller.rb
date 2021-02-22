class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # POST: /users
  post "/users" do
    redirect "/users"
  end

  # GET: /users/
  get "/users/:username" do
    @user = User.find_by(username: params[:username])

    if @user
      @reviews = @user.reviews

      erb :"/users/show.html"
    else
      erb :"/users/404.html"
    end

  end

  # GET: /users/<user>/edit
  get "/users/:username/edit" do
    @user = User.find_by(username: params[:username])
    cu = current_user
    if @user
      if @user == cu
        erb :"/users/edit.html"
      else
        redirect :"/users/#{@user.username}"
      end
    else
      erb :"/users/404.html"
    end

  end

  # PATCH: /users/<username>
  patch "/users/:username" do
    @user = User.find_by(username: params[:username])
    @user.update(params[:user])

    redirect "/users/#{@user.username}"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end

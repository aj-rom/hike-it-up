class ReviewsController < ApplicationController

  get '/reviews' do
    if logged_in?
      @reviews = current_user.reviews

      erb :'reviews/index.html'
    else
      redirect "/login"
    end
  end
end

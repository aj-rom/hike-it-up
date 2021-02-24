class ReviewsController < ApplicationController

  get '/reviews' do
    if logged_in?
      @reviews = current_user.reviews

      erb :'reviews/index.html'
    else
      redirect "/login"
    end
  end

  get '/reviews/:id' do
    @review = Review.find(params[:id])
    if @review
      erb :'/reviews/show.html'
    else
      erb :'/reviews/404.html'
    end
  end

  get '/reviews/:id/edit' do
    @review = Review.find(params[:id])
    if !@review || @review.user != current_user
      redirect "/reviews"
    else
      erb :'reviews/edit.html'
    end
  end

  post '/reviews/:id' do
    @review = Review.find(params[:id])
    @review.update(params[:review])

    redirect '/reviews/:id'
  end
end

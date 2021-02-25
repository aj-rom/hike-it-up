class ReviewsController < ApplicationController

  get '/reviews' do
    redirect '/login' unless logged_in?

    @reviews = current_user.reviews
    erb :'reviews/index.html'
  end

  get '/reviews/:id' do
    @review = Review.find(params[:id])
    if @review
      @trail = @review.trail
      erb :'/reviews/show.html'
    else
      erb :'/reviews/404.html'
    end
  end

  get '/reviews/:id/edit' do
    redirect "/login" unless logged_in?

    @review = Review.find(params[:id])
    if !@review || @review.user != current_user
      redirect "/reviews"
    else
      erb :'reviews/edit.html'
    end
  end

  patch '/reviews/:id' do
    @review = Review.find(params[:id])
    @review.update(params[:review])

    redirect "/reviews/#{@review.id}"
  end

  delete '/reviews/:id' do
    @review = Review.find(params[:id])
    @review.destroy

    redirect '/reviews'
  end

end

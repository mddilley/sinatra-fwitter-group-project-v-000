class TweetsController < ApplicationController

  get '/tweets' do
    if is_loggedin?
      @user = current_user
      erb :"tweets/tweets"
    else
      redirect to "/login"
    end
  end

  get '/tweets/new' do
    if is_loggedin?
      erb :"/tweets/new"
    else
      redirect to "/login"
    end
  end

  post '/tweets' do
    # binding.pry
    # if params[:content] != ""
      tweet = Tweet.create(:content => params[:content], :user_id => session[:id])
    # else
    #   redirect
  end

end

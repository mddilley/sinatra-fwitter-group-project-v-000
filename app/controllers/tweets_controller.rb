class TweetsController < ApplicationController

  get '/tweets' do
    if is_loggedin?
      @user = current_user
      erb :"tweets/tweets"
    else
      redirect to "/login"
    end
  end

  get 'tweets/new' do
    if is_loggedin?
      erb :"/tweets/new"
    else
      redirect to "/login"
    end
  end

end

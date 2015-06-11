class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.reverse
  end

  def show
    @users = User.find(params[:id])
    @tweets = Tweet.find(params[:id])
  end

  def new
    @tweets = Tweet.new
  end

  def create
    @users = User.create(params[:username])
    @tweets = Tweet.create(params[:message])
    user_id = @users.id
    redirect_to "/tweets/#{user_id}"
  end

end

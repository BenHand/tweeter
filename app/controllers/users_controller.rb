class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:user_id])
    @tweets = Tweet.find(params[:id])
  end

  def create
    @users = User.create(params[:id])
    redirect_to "/tweets/new", locals: { users: @users}
  end

  def new
    @users = User.new
  end

  # def search
  #   @user_results = User.where('username LIKE')
  #   @tweet_results =
  # end

end

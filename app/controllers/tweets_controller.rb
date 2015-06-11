class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.reverse
  end

  def show
    @tweets = Tweet.find(params[:id])
  end

end

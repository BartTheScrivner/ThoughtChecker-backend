class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    byebug
    render json: user, include: [:affirmations, :friendships]
  end
end



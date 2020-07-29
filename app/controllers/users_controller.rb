class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    render json: user, include: [:affirmations, :friendships, :friend_requests, :entries]
  end
end



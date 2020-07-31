class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:_json])
    render json: user, include: [:affirmations, :friendships, :friends, :entries]
  end

  def destroy
    reset_session
    @current_user = nil
    redirect_to root_path
  end

end

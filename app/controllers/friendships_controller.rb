class FriendshipsController < ApplicationController

  def destroy
    byebug
    friendship = Friendship.find(params[:id])
    friendship.destroy
    render json: {:message =>"Successful"}
  end
end

class FriendshipsController < ApplicationController

  def destroy
    byebug
    friendship = Friendship.find(params[:id])
    friendship.destroy
    render json: {"Successful"}
  end
end

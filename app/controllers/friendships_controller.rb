class FriendshipsController < ApplicationController

  def destroy
    friendship = Friendship.find(params[:id])
    friendship.destroy
    render json: {:message =>"Successful"}
  end
end

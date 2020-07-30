class AffirmationsController < ApplicationController
  
  def create 
    affirmation = Affirmation.create(affirm_params)
    render json: affirmation
  end


  private

  def affirm_params
    params.require(:affirmation).permit(:sender_id, :recipient_id, :message)
  end
end

class VotesController < ApplicationController



  def vote_params
    params.require(:vote).permit(:request_id, :user_id)
  end

end
  
class GprequestsController < ApplicationController

  def user_vote
    @gprequest = Gprequest.find(params[:id])
    @gprequest.votes << Vote.create(user: current_user)
    @gprequest.save
    redirect_to gprequests_path
  end

  def new
    @gprequest = Gprequest.new
  end

  def index
    @votecount = Vote.count
    @gprequests = Gprequest.all
    @allow_vote = true
    @vote_found = Vote.find_by(user_id: session[:user_id])
    if @vote_found
      @allow_vote = false 
    end
  end

  def show
    @gprequests = Gprequest.where(user_id: session[:user_id])
  end

  def create
    @gprequest = Gprequest.new(gprequest_params)
    if @gprequest.save
      flash[:success] = "Your request has been posted"
      redirect_to show_path
    else
      flash[:error] = "Your request did not post (confirm title entry)"
      redirect_to show_path
    end
  end

  def rank
    @gprequests = Gprequest.all
    rank_array = []     # an array of arrays
    @gprequests.each do |gprequest|
      rank_data = []
      vote_num = gprequest.votes.count
      rank_data = [gprequest.id, vote_num]
      rank_array << rank_data
    end
    @gprequest_rank = rank_array.sort do |a, b|
      b[1] <=> a[1]
    end
  end

  def vote_count
    vote_count = gprequest.votes.count
  end

  def destroy
  end

  private

  def gprequest_params
    params.require(:gprequest).permit(:id, :user_id, :title, :description)
  end

end


module GprequestsHelper

  def vote_count(gprequest)
    vote_count = gprequest.votes.count
  end

end
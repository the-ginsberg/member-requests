class RenameRequestToGprequestOnVotes < ActiveRecord::Migration
  def change
    rename_column :votes, :request_id, :gprequest_id
  end
end

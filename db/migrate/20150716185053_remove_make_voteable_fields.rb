class RemoveMakeVoteableFields < ActiveRecord::Migration
  def change
    remove_column :users, :up_votes
    remove_column :users, :down_votes
    remove_column :requests, :up_votes
    remove_column :requests, :down_votes
  end
end

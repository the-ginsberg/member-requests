class ReDropRequestsContentsColumn < ActiveRecord::Migration
  def change
    remove_column :requests, :content
  end
end

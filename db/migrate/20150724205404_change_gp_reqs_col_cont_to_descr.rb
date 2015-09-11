class ChangeGpReqsColContToDescr < ActiveRecord::Migration
  def change
    rename_column :gprequests, :content, :description
  end
end

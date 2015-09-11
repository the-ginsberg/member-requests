class ChangeRequestTitleToText < ActiveRecord::Migration
  def change
    change_column :requests, :title, :text
  end
end

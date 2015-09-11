class ChangeRequestContentToTitle < ActiveRecord::Migration
  def change
    rename_column :requests, :content, :title
  end
end

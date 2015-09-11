class RequestsAddNewColumnContent < ActiveRecord::Migration
  def change
    add_column :requests, :content, :text
  end
end

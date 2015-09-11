class ChangeRequestContentDataType < ActiveRecord::Migration
  def change_column_type
   change_column :requests, :content, :text
  end
end

class ChangeRequestColumnName < ActiveRecord::Migration
  def change
    rename_column :requests, :description, :content
  end
end

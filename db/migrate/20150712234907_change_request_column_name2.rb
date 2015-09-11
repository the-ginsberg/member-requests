class ChangeRequestColumnName2 < ActiveRecord::Migration
  def change
        rename_column :requests, :email, :user_id
  end
end

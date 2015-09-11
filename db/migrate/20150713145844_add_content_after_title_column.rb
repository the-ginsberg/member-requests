class AddContentAfterTitleColumn < ActiveRecord::Migration
  def change
    add_column :requests, :content, :text, :after => :title
  end
end

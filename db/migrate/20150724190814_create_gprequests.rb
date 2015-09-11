class CreateGprequests < ActiveRecord::Migration
  def change
    create_table :gprequests do |t|
      t.integer :user_id
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end

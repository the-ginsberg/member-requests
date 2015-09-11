class Vote < ActiveRecord::Base
  belongs_to :gprequest
  belongs_to :user
end

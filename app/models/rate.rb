class Rate < ActiveRecord::Base
  attr_accessible :kifu_id, :rate, :user_id
  has_many :users, :kifus
end

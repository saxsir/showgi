class Rate < ActiveRecord::Base
  attr_accessible :kifu_id, :rate, :user_id
  belongs_to :user
  belongs_to :kifu
end

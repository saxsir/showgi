class Favorite < ActiveRecord::Base
  attr_accessible :favorite, :kifu_id, :user_id
  has_many :users, :kifus
end

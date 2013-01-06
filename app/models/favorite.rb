class Favorite < ActiveRecord::Base
  attr_accessible :favorite, :kifu_id, :user_id
  belongs_to :user
  belongs_to :kifu
end

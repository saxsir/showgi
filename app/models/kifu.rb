class Kifu < ActiveRecord::Base
  attr_accessible :file_url, :user_id, :title, :csa, :view
  belongs_to :user
  has_many :rates
  has_many :favorites
end

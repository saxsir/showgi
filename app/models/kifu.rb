class Kifu < ActiveRecord::Base
  attr_accessible :file_url, :owner_id, :title, :csa
  belongs_to :user
  has_many :rates

end

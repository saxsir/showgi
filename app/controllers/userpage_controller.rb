class UserpageController < ApplicationController
  before_filter :authenticate_user!
  # GET /userpage
  def index
    
  end
end

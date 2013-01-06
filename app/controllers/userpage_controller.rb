class UserpageController < ApplicationController
  before_filter :authenticate_user!
  # GET /userpage
  def index
    @favorites = Favorite.find(:all, :conditions => ['user_id = ?', current_user.id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kifus }
    end    
  end
end

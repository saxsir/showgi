class FavoriteController < ApplicationController

  # POST /kifus/:id
  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.kifu_id = params[:id]
    
    respond_to do |format|
      if @favorite.save
        format.html { redirect_to :back, :notice => 'Favorite was successfully created.' }
      else
        format.html { redirect_to :back, :notice => 'Error occured.' }
      end
    end
  end
end

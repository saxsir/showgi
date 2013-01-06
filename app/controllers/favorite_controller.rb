class FavoriteController < ApplicationController

  # POST /favorite/:kifu_id
  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.kifu_id = params[:kifu_id]
    
    respond_to do |format|
      if @favorite.save
        format.html { redirect_to :back, :notice => 'Favorite was successfully created.' }
      else
        format.html { redirect_to :back, :notice => 'Error occured.' }
      end
    end
  end

  # DELETE /favorite/:id
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to :back, :notice => 'Favorite was successfully deleted.' }
    end
  end
end

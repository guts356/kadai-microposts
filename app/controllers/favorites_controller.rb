class FavoritesController < ApplicationController
  before_action :set_micropost

  def create
    current_user.favorite(@micropost)
  end
  
  def destroy
    current_user.unfavorite(@micropost)
  end
  

  
  private
  
  def set_micropost
    @micropost = Micropost.find(params[:micropost_id])
  end
end

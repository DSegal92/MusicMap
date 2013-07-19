class MapsController < ApplicationController
  def index
  	@artists = current_user.artists
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist }
    end
  end
end

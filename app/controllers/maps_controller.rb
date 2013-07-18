class MapsController < ApplicationController
  def index
  	@artists = Artist.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist }
    end
  end
end

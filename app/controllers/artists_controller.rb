class ArtistsController < ApplicationController
  # GET /artists
  # GET /artists.json
  def index
    if current_user
      @artists = current_user.artists
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artists }
    end
  end
  def map
    @artists = Artist.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artists }
    end
  end



  # GET /artists/new
  # GET /artists/new.json
  def new
    @artist = Artist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist }
    end
  end

  # GET /artists/1/edit
  def edit
    @artist = Artist.find(params[:id])
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = current_user.artists.create!(params[:artist])
   
    respond_to do |format|
      if @artist.save
        format.html { redirect_to "/artists" , notice: 'Artist was successfully created.' }
        format.json { render json: @artist, status: :created, location: @artist }
      else
        format.html { render action: "new" }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artists/1
  # PUT /artists/1.json
  def update
    @artist = current_user.artists.find(params[:id])
    @artist.update_attributes!(params[:artist])
    respond_to do |format|
      if @artist.update_attributes(params[:artist])
        format.html { redirect_to @artist, notice: 'Artist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist = current_user.artists.find(params[:id])
    @artist.destroy

    respond_to do |format|
      format.html { redirect_to artists_url }
      format.json { head :no_content }
    end
  end
end

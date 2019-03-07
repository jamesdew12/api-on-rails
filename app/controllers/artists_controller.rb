class ArtistsController < ApplicationController
  def index
    @artists = Artist.all

  end

  def show
    @artist = Artist.find(params[:id])
  end
  def new
    @recipe = Artist.new

  end
  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to artists_path, notice: "Deleted Artist: #{artist.name}"

  end



end

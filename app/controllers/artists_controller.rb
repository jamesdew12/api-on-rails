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
  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to artist_path(@artist), notice: "artist created"
    else
      @errors = @artist.errors.full_messages
      render :new
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to artists_path, notice: "Deleted Artist: #{artist.name}"

  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description)

  end



end

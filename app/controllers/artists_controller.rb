class ArtistsController < ApplicationController
  before_action :require_login
  def index
    @artists = current_user.artists.order(:id )

  end

  def show
    @artist = current_user.artists.find(params[:id])
  end
  def new
    @recipe = current_user.artists.build
  end
  def create
    @artist = current_user.artists.build(artist_params)

    if @artist.save
      redirect_to artist_path(@artist), notice: "artist created"
    else
      @errors = @artist.errors.full_messages
      render :new
    end
  end

  def edit
    @artist = current_user.artists.find(params[:id])
  end
  def update
    @artist = current_user.artists.find(params[:id])

    if @artist.update_attributes(artist_params)
      redirect_to artist_path(@artist), notice: "artist Updated"
    else
      @errors = @artist.errors.full_messages
      render :edit
    end
  end

  def destroy
    artist = current_user.artists.find(params[:id])
    artist.destroy
    redirect_to artists_path, notice: "Deleted Artist: #{artist.name}"

  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description)

  end



end

class Public::GenresController < Public::ApplicationController

  def search
    @genre = Genre.find(params[:genre_id])
  end

end

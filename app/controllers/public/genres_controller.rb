class Public::GenresController < Public::ApplicationController

  def search
    @genre = Genre.find(params[:genre_id])
    @genres = @genre.recipes.page(params[:page]).per(8)
  end

end

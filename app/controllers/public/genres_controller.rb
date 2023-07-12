class Public::GenresController < Public::ApplicationController

  def search
    @genre = Genre.find(params[:genre_id])
    @genres = @genre.recipes.page(params[:page]).per(12).order(id: "DESC")
  end

end

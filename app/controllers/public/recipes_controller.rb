class Public::RecipesController < Public::ApplicationController

  def index
    @recipes = Recipe.all
    @genres = Genre.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.member = current_member
    if @recipe.save!
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  def search
    @recipes = Recipe.search(params[:search])
  end

  private

  def recipe_params
    # :id, :_destroyをつけることで、編集と削除が可能になる
    params.require(:recipe).permit(:title, :body, :image, :genre_id, list_storages_attributes: [:list_id, :id, :quantity, :_destroy])
  end

  def search_params
    params.permit(:keyword)
  end

end

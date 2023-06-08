class Public::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
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
    Recipe.destroy(params[:id])
    redirect_to recipes_path
  end

  private

  def recipe_params
    # album_tracks_attributesが子のモデルに保存する要素
    #   :id, :_destroyをつけることで、編集と削除が可能になる
    params.require(:recipe).permit(:title, :body, :image, :genre, list_ids: [], list_storages_attributes: [:id, :quantity, :_destroy])
  end

end

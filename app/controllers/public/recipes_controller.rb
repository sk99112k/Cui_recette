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
    @recipe.member = current_member
    # 中間テーブルに保存される
    # 追加した分のlist_idを繰り返しで保存する
    if @recipe.save!
      params[:recipe][:list_id].each do |list|
        ListStorage.create(recipe_id: @recipe.id, list_id: list)
      end
      redirect_to recipes_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    # params.require(:recipe).permit(:title, :body, :genre, :list_id=>, :image, :quantity)
    params.require(:recipe).permit(:title, :body, :genre, :image)
  end

end

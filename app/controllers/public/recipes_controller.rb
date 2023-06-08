class Public::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.limit(1)
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
    # 中間テーブルのListStoragに保存される
    # 追加した分のlist_idを繰り返しで保存する
    if @recipe.save!
      quantities = params[:quantities] || {}
      quantities.each do |list_id, quantity|
        ListStorage.create(recipe_id: @recipe.id, list_id: list_id, quantity: quantity)
      end
      # params[:quantities][:lists].each do |list|
      #   ListStorage.create(recipe_id: @recipe.id, list_id: list, quantity: quantity)
      # end
      redirect_to recipes_path
    else
      render "new"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    # params.require(:recipe).permit(:title, :body, :genre, :list_id=>, :image, :quantity)
    params.require(:recipe).permit(:title, :body, :genre, :image, list_attributes: :quantity)
  end

end

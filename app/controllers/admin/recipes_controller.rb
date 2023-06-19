class Admin::RecipesController < Admin::ApplicationController
  
  def index
    @recipes = Recipe.page(params[:page]).per(10)
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @comments = @recipe.comments.page(params[:page]).per(10)
  end
  
end

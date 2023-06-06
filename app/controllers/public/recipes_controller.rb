class Public::RecipesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
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
    params.require(:recipe).permit(:title, :body, :genre, :list_id, :image)
  end

end

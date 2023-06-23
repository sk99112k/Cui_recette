class Public::RecipesController < Public::ApplicationController
  before_action :is_matching_login_member, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all.page(params[:page]).per(10)
    @genres = Genre.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
  end

  def new
    @recipe = Recipe.new
    @recipe.list_storages.build
    @list = List.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.member = current_member
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @list = List.new
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
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
    @recipes = Recipe.search(params[:search]).page(params[:page]).per(12)
  end

  private

  def recipe_params
    # "cocoon" (:id, :_destroyをつけることで、編集と削除が可能になる)
    params.require(:recipe).permit(:title, :body, :image, :genre_id, list_storages_attributes: [:list_id, :id, :quantity, :unit, :_destroy])
  end

  def search_params
    params.permit(:keyword)
  end

  def is_matching_login_member
    recipe = Recipe.find(params[:id])
    if recipe.member_id != current_member.id
      redirect_to recipes_path, notice: '他人の編集画面へ遷移できません。'
    end
  end

end

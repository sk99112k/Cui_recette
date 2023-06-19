class Public::BookMarksController < Public::ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @book_mark = current_member.book_marks.new(recipe_id: @recipe.id)
    @book_mark.save
    # redirect_to request.referer
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @book_mark = current_member.book_marks.find_by(recipe_id: @recipe.id)
    @book_mark.destroy
    # redirect_to request.referer
  end

  def book_marks
    @member = Member.find(params[:member_id])
    @book_mark_recipes = Recipe.where(id: BookMark.where(member_id: @member.id).pluck(:recipe_id)).page(params[:page]).per(8)
  end

end

class Public::ChecksController < Public::ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    @recipe = Recipe.find(params[:recipe_id])
    @check = current_member.checks.new(comment_id: @comment.id, recipe_id: @recipe.id)
    @check.save
    # redirect_to request.referer
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @recipe = Recipe.find(params[:recipe_id])
    @check = current_member.checks.find_by(comment_id: @comment.id, recipe_id: @recipe.id)
    @check.destroy
    # redirect_to request.referer
  end

end

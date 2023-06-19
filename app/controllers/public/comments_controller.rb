class Public::CommentsController < Public::ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = current_member.comments.new(comment_params)
    @comment.recipe_id = @recipe.id
    @comment.save
    # redirect_to request.referer
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    # redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

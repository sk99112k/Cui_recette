class Admin::CommentsController < Admin::ApplicationController
  # before_action :new_guest, except: [:destroy]

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to request.referer, notice: 'コメントが削除されました。'
  end

end

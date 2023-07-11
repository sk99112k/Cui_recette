class Admin::MembersController < Admin::ApplicationController

  def show
    @member = Member.find(params[:id])
    @recipes = @member.recipes.page(params[:page]).per(10)
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to admin_root_path, notice: "会員ステータスを更新しました"
    else
      render "show"
    end
  end

  private

  def member_params
    params.require(:member).permit(:is_deleted)
  end

end

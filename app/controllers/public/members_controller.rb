class Public::MembersController < Public::ApplicationController

  def index
    @members = Member.all.page(params[:page]).per(10).order(id: "DESC")
  end

  def show
    @member = Member.find(params[:id])
    @recipes = @member.recipes.page(params[:page]).per(12)
  end

  def withdraw
    @member = current_member
    @member.update(is_deleted: true)
    reset_session
    redirect_to root_path, notice: "退会しました。"
  end

  private

  def member_params
    params.require(:member).permit(:name, :email, :is_deleated)
  end

end

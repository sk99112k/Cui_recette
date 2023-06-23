class Public::MembersController < Public::ApplicationController

  def index
    @members = Member.all.page(params[:page]).per(10)
  end

  def show
    @member = Member.find(params[:id])
    @recipes = @member.recipes.page(params[:page]).per(12)
  end

  private

  def member_params
    params.require(:member).permit(:name, :email)
  end

end

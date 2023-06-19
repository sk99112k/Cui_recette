class Public::MembersController < Public::ApplicationController

  def index
    @members = Member.all.page(params[:page])
  end

  def show
    @member = Member.find(params[:id])
    @recipes = @member.recipes
  end

  private

  def member_params
    params.require(:member).permit(:name, :email)
  end

end

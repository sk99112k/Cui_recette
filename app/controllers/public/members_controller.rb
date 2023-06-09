class Public::MembersController < Public::ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    @recipes = Recipe.all
  end

  private

  def member_params
    params.require(:member).permit(:name, :email)
  end

end

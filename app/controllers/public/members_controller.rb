class Public::MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = current_member
    @recipes = Recipe.all
  end

  private

  def member_params
    params.require(:member).permit(:name, :email)
  end

end

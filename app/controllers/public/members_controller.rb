class Public::MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = current_member
    @recipes = Recipe.all
  end

  def edit
    @member = current_member
  end
  
  private
  
  def member_params
    params.require(:member).permit(:name, :email)
  end 
  
end

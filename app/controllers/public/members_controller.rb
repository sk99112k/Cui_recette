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

  def update
    @member = current_member
    if @member.update(member_params)
      redirect_to member_path(@member)
    else
      render "edit"
    end
  end
  
  private
  
  def member_params
    params.require(:member).permit(:name, :email)
  end 
  
end

class Admin::MembersController < Admin::ApplicationController
  
  def show
    @member = Member.find(params[:id])
    @recipes = @member.recipes.page(params[:page]).per(10)
  end
  
end

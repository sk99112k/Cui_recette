class Admin::MembersController < Admin::ApplicationController
  
  def show
    @member = Member.find(params[:id])
    @recipes = @member.recipes
  end
  
end

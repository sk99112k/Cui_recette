class Admin::MembersController < Admin::ApplicationController
  
  def show
    @members = Member.all
    @member = Member.find(params[:id])
    @recipes = Recipe.all
  end
  
end

class Admin::HomesController < Admin::ApplicationController
  def top
    @members = Member.page(params[:page]).per(10)
  end
end

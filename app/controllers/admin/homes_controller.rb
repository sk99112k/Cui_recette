class Admin::HomesController < Admin::ApplicationController
  def top
    @members = Member.all
  end
end

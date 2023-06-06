class Admin::GuestsController < ApplicationController
  before_action :new_guest, only: [:edit, :destroy]

  def new_guest
    admin = Admin.find_or_create_by!(email: 'guest@example.com') do |admin|
    admin.password = SecureRandom.urlsafe_base64
    end
    sign_in(admin)
    redirect_to admin_root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

end

class Public::GuestsController < Public::ApplicationController
  before_action :new_guest, only: [:edit, :destroy]

  def new_guest
    member = Member.find_or_create_by!(name: 'guestuser' ,email: 'guest@example.com') do |member|
    member.password = SecureRandom.urlsafe_base64
    end
    sign_in(member)
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

end

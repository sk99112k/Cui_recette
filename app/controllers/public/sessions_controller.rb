# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :member_state, only: [:create]

  # sign_in後ユーザー詳細ページに遷移
  def after_sign_in_path_for(resource)
    super(resource)
    member_path(current_member)
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  def destroy
    if current_member.name == 'guestuser'
      current_member.destroy
    end
    super
  end

  protected

  def member_state
    @member = Member.find_by(name: params[:member][:name])
    return if !@member
    if @member.valid_password?(params[:member][:password]) && @member.is_deleted
      redirect_to new_member_registration_path, notice: "退会済みの為、再度ご登録してご利用ください"
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
  # end
end

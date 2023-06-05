class ApplicationController < ActionController::Base

  protected

  #adminでsign_inする時は"admin/parameter_sanitizer.rb"を参照する
  #memberでsign_inする時は"public/Member_parameter_sanitizer.rb"を参照する。
  def devise_parameter_sanitizer
    if resource_class == Member
      Public::MembersParameterSanitizer.new(Member, :member, params)
    elsif resource_class == Admin
      Admin::ParameterSanitizer.new(Admin, :admin, params)
    else
      super
    end
  end

end

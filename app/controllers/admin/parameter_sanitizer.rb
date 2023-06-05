class Admin::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_in, keys: [:password, :email] )
  end
end
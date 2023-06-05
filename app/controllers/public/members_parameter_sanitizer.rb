class Public::MembersParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_in, keys: [:password, :name] )
  end
end
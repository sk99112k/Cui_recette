class Public::ApplicationController < ApplicationController
  before_action :authenticate_member!
end

class Public::HomesController < Public::ApplicationController
  skip_before_action :authenticate_member!
end
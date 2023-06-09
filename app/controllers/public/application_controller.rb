class Public::ApplicationController < ApplicationController
  before_action :authenticate_member!
end
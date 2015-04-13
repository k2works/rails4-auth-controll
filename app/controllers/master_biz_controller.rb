class MasterBizController < ApplicationController
  def index
    @users = User.all
  end
end

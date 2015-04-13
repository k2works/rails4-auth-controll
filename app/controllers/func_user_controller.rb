class FuncUserController < ApplicationController
  def index
    @func_user = FuncUser.all
  end
end

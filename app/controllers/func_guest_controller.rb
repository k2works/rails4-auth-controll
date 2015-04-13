class FuncGuestController < ApplicationController
  def index
    @func_guest = FuncGuest.all
  end
end

class WelcomeController < ApplicationController
  def index
    @wits = Wit.all
    @users = User.all
    @new_wits = NewWit.all
  end
end

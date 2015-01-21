class WelcomeController < ApplicationController
  def index
    @wits = Wit.all
    @users = User.all
  end
end

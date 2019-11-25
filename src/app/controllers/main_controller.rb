class MainController < ApplicationController
  def index
    # if the user is signed in, pass the user id to this index view
    if params[:user]
      @user = User.find(params[:user])
    # else do not pass any user parameters
    else
    end
  end
end

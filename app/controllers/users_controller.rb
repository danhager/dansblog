class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
end

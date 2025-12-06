class Admin::UsersController < ApplicationController
  before_action :ensure_manager

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_users_path, notice: "User updated successfully!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def ensure_manager
    unless current_user.manager?
      redirect_to root_path, alert: "You are not authorized to access the admin panel."
    end
  end

  def user_params
    params.require(:user).permit(:role)
  end
end

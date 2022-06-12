class UsersController < ApplicationController
  def show
  end

  def edit
    @user = current_user.find(params[:id])
    @user.update(user_params)
    redirect_to current_user_path(@user.id) 
  end
  
  def index
  end
  
  
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end

 
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.book.all
    @book = Book.new
    @user_info = @book.user
  end

  def edit
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to current_user_path(@user.id) 
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)  
  end
  
  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end

 
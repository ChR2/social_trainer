class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = @user.posts.order("created_at DESC")
  end
  
  def new
      
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes!(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:about)
  end
end

class UsersController < ApplicationController
  def index
    if params[:name]
      @users = User.search(params[:name])
    else
      @users = User.all
    end
    # @search_users = User.search(params[:search]).page(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
    # @post = Post.new
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

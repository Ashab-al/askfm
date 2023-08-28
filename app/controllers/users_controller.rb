class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
    @user = User.friendly.find(params[:id])
    @new_question = @user.questions.build
  end
end

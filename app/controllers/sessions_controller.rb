class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user.present?
      session[:user_id] = @user.id
      flash[:success] = "#{@user.name}, вы успешно вошли в аккаунт!"
      redirect_to root_url
    else
      flash[:danger] = "#{@user.name}, неправильный логин или пароль!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Вы вышли из своего аккаунта!'
  end

end

#sdjsk2ASfdjfda
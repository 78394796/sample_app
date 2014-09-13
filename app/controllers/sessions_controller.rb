class SessionsController < ApplicationController

  def new

  end

  def create

    if user_sign_in params

    else
      flash[:error] = "Invalid email/password combination"
      render 'new'
    end

  end

  def destroy

  end

  private

  def user_sign_in(params)
    User.find_by(email: params[:session][:email].downcase) ? user.password == params[:session][:password] : nil
  end

end

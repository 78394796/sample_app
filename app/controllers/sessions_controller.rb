class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
    else
      flash[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy

  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
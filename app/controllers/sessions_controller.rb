class SessionsController < ApplicationController
  def new
  end

  def create
    @mySession = params;


    user = User.find_by_email(params[:session][:email].downcase)
    password = User.find_by_password(params[:session][:password])

    if user && password
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
end

  def destroy
  end
end

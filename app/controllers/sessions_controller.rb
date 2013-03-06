class SessionsController < ApplicationController
  def new
  end

  def create
    @mySession = params;


    user = User.find_by_email(params[:session][:email].downcase)
    if user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
end

  def destroy
  end
end

class StaticPagesController < ApplicationController
  def Home
  	@notifications = Notification.all
  end

  def about
  end

  def contact
  end

  def help
  end
end

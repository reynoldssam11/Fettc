class Notification < ActiveRecord::Base
  attr_accessible :category, :content, :is_approved, :post_time, :title
end

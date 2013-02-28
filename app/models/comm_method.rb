class CommMethod < ActiveRecord::Base
  attr_accessible :address, :frequency, :method_type, :user_id

  belongs_to :user
end

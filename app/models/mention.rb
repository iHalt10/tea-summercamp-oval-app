class Mention < ActiveRecord::Base
  belongs_to :newsID, class_name: "News"
  belongs_to :userID, class_name: "User"
end

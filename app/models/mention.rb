class Mention < ActiveRecord::Base
  belongs_to :news, class_name: "News"
  belongs_to :user, class_name: "User"
  validates :news_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
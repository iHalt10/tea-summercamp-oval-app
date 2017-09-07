class News < ActiveRecord::Base
  has_many :mentions
  has_many :news_own_users_relationships, class_name:  "Mention",
                                     foreign_key: "news_id",
                                     dependent:   :destroy
  has_many :news_own_users, through: :user_mention_relationships, source: :user
end
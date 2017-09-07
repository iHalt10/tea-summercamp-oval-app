class NewsController < ApplicationController
  
  def show
    @news = News.find(params[:id])
    @mention=Mention.where(news_id: params[:id])
    @user = []
    @mention.each do |mens|
      @user.push(User.find(mens.user_id))
    end
    
    

    # binding.pry
    # @users = @mention.user.order(created_at: :desc)
    # @followings = @user.following_users.order(created_at: :desc)
    @mention_current_user = current_user.mentions.build(news_id: params[:id]) if logged_in?

  end
  
end
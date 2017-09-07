class MentionsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  def create
    @mention = current_user.mentions.build(mention_params)

    
    # binding.pry
    if @mention.save
      flash[:success] = "Mention created!"
      redirect_to "/news/#{params[:mention][:news_id]}"
    else
      redirect_to "/news/#{params[:mention][:news_id]}"
    end
  end
  
  private
  def mention_params
    params.require(:mention).permit(:content,:news_id)
  end
end

class StaticPagesController < ApplicationController
  def home
    require "rss"
    require "time"
    require "active_support/time"
    url = "https://news.yahoo.co.jp/pickup/rss.xml"
    rss = RSS::Parser.parse(url)
    @news_top = News.find_by(id: 1)
    
    if @news_top.putDate < rss.channel.pubDate
      rss.channel.items.count.times do |i|
        @num_min = rss.channel.items[i].link.rindex("/") + 1
        @num_max = rss.channel.items[i].link.length - 1
        session_id = rss.channel.items[i].link.slice(@num_min..@num_max)
        @news_info = News.find_or_initialize_by(sessionID: session_id)
        if @news_info.new_record? # 新規作成の場合は保存
          @news_info.sessionID = session_id
          @news_info.title = rss.channel.items[i].title
          @news_info.link =  rss.channel.items[i].link
          @news_info.putDate = rss.channel.items[i].pubDate
          @news_info.save!
        end
      end
      @news_top.update(putDate: rss.channel.pubDate)
    end
    @news_top.id = -1
    @news = News.all
    @mens = []
    # @onemwn = Mention.find_by(news_id: 3)
    @news.each do |new|
      @onemen = Mention.find_by(news_id: new.id)
      if @onemen.nil?
        @mens.push(@news_top)
      else
        @mens.push(@onemwn)
      end
    end
    
    def whatis
      
    end
    
    # binding.pry
    # binding.pry
  end
end
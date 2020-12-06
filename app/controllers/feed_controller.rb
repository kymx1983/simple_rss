require 'rss'

class FeedController < ApplicationController
  def index
    @feeds = Feed.all
  end

  def update
      url = "https://taisy0.com/feed"
    rss = RSS::Parser.parse(url)

    puts "blog title:" + rss.channel.title
    puts
    rss.items.each do |item|
      feed = Feed.new
      feed.pub_date = item.pubDate.strftime( "%Y/%m/%d" )
      feed.title = item.title
      feed.link = item.link
      feed.description = item.description
      # p item.description
      # puts
      feed.save
    end
    redirect_to('/feed/index')
  end
end

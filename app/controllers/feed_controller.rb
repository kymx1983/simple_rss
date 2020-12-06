require 'rss'

class FeedController < ApplicationController
  def index
    url = "https://taisy0.com/feed"
    rss = RSS::Parser.parse(url)
    puts "blog title:" + rss.channel.title
    puts
    rss.items.each do |item|
      puts item.pubDate.strftime( "%Y/%m/%d" )
      puts item.title
      puts item.link
      p item.description
      puts
    end
  end
end

require 'nokogiri'
require 'open-uri'



class Tweet
 def initialize
  @nokogiri_doc = Nokogiri::HTML(open('https://twitter.com/lanadelrey'))
 end 

 def last_tweets
  twitter_array = @nokogiri_doc.css('p.ProfileTweet-text')

  @tweets = []

  twitter_array.each do |item|
    @tweets << item.text
  end
  @tweets
 end

end
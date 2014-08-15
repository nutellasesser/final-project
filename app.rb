require 'bundler' #require 
require 'sinatra'
Bundler.require #require everything in bundler in gemfile
require_relative './lib/scrapper.rb'


get '/' do
  @object = Tweet.new

  erb :index # This tells your program to use the html associated with the index.erb file in your browser.
end

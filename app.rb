require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = [
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com"
    ]

    erb :'bookmarks/index'
  end

  get '/bookmarks' do

    p ENV
    
    @bookmarks = Bookmark.all
    erb :index
  end

  run! if app_file == $0
end

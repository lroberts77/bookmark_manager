require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
        "hello world"
    end

    get '/bookmarks' do
       p "hello" 
       p @bookmarks = Bookmark.all
       p erb :'bookmarks/index'
    end
    run! if app_file == $0
end
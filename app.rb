require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
        "hello world"
    end

    get '/bookmarks' do
       @bookmarks = Bookmark.all
       erb :'bookmarks/index'
    end

    get '/bookmarks/new' do
        @bookmarks = Bookmark.all
        erb :"bookmarks/new"
    end
    post '/bookmarks' do
       Bookmark.create(url: params[:url], title: params[:title])
        redirect '/bookmarks'
    end

    enable :sessions, :method_override

    delete '/bookmarks/:id' do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        connection.exec("DELETE FROM bookmarks WHERE id = #{params['id']}")
        redirect '/bookmarks'
    end

    delete '/bookmarks/:id' do
        Bookmark.delete(id: params[:id])
        redirect '/bookmarks'
      end

    run! if app_file == $0
end
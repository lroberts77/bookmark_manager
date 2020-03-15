require 'bookmark'
require 'database_helpers'
require 'pg'

describe Bookmark do

    # describe '.create' do
    #     it 'creates a new bookmark' do
    #       bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first
      
    #       expect(bookmark['url']).to eq 'http://www.testbookmark.com'
    #       expect(bookmark['title']).to eq 'Test Bookmark'
    #     end
    #   end

    describe '.all' do
      
        it 'returns a list of bookmarks' do
            connection = PG.connect(dbname: 'bookmark_manager_test')
         
            # Add the test data
            bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
            Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
            Bookmark.create(url: "http://www.google.com", title: "Google")
         
            bookmarks = Bookmark.all
         
            expect(bookmarks.length).to eq 3
            expect(bookmarks.first).to be_a Bookmark
            expect(bookmarks.first.id).to eq bookmark.id
            expect(bookmarks.first.title).to eq 'Makers Academy'
            expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
        
        end
    end    
    describe '.create' do
        # it 'creates a new bookmark' do
        #     Bookmark.create(url: 'http://www.testbookmark.com')

        #     expect(Bookmark.all).to include 'http://www.testbookmark.com'
        # end

        it 'creates a new bookmark' do
            bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
            # persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")
            persisted_data = persisted_data(id: bookmark.id)

            expect(bookmark).to be_a Bookmark
            expect(bookmark.id).to eq persisted_data['id']
            expect(bookmark.title).to eq 'Test Bookmark'
            expect(bookmark.url).to eq 'http://www.testbookmark.com'
          end
    end

    describe '.delete' do
        it 'deletes the given bookmark' do
          bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      
          Bookmark.delete(id: bookmark.id)
      
          expect(Bookmark.all.length).to eq 0
        end
    end

    describe '.update' do
        it 'updates the bookmark with the given data' do
          bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
          updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.snakersacademy.com', title: 'Snakers Academy')
      
          expect(updated_bookmark).to be_a Bookmark
          expect(updated_bookmark.id).to eq bookmark.id
          expect(updated_bookmark.title).to eq 'Snakers Academy'
          expect(updated_bookmark.url).to eq 'http://www.snakersacademy.com'
        end
      end
      

end
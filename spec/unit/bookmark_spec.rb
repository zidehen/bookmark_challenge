require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '#all bookmarks' do
    it 'shows a list of all bookmarks ' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      
      bookmark = Bookmark.create(url: "http://www.makersacademy.com/", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com/", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq "Makers Academy"
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com/"
    end
  end

  describe '#add bookmarks' do
    it 'adds a new bookmark to the list' do
      bookmark = Bookmark.create(url: 'http://www.test.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)
      
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.test.com'

    end
  end

  describe '#delete bookmarks' do
    it 'deletes bookmark from the list' do
      bookmark = Bookmark.create(url: 'http://www.test.com', title: 'Test Bookmark')
      
      Bookmark.delete(id: bookmark.id)
      
      expect(Bookmark.all.length).to eq 0
    end
  end

  describe '#update bookmarks' do
    it 'updates a bookmark from the list' do
      bookmark = Bookmark.create(url: 'http://www.test.com', title: 'Test Bookmark')
      updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.github.com', title: 'GitHub')
      
      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'GitHub'
      expect(updated_bookmark.url).to eq 'http://www.github.com'
    end
  end

  describe '#find bookmark' do
    it 'finds and returns the requested bookmark' do
      bookmark = Bookmark.create(url: 'http://www.test.com', title: 'Test Bookmark')
      
      result = Bookmark.find(id: bookmark.id)

      expect(result).to be_a Bookmark
      expect(result.id).to eq bookmark.id
      expect(result.title).to eq 'Test Bookmark'
      expect(result.url).to eq 'http://www.test.com'
    end
  end
end

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
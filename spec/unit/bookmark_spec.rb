require 'bookmark'

describe Bookmark do
  describe '#all bookmarks' do
    it 'shows a list of all bookmarks ' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end

  describe '#add bookmarks' do
    it 'adds a new bookmark to the list' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmark = Bookmark.create(url: 'www.test.com', title: 'Test Bookmark').first
      expect(bookmark['url']).to eq('www.test.com')
      expect(bookmark['title']).to eq('Test Bookmark')
    end
  end
end
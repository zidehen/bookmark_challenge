require 'bookmark'

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
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
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
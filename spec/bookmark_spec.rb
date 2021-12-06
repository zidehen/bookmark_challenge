require 'bookmark'

describe Bookmark do
  describe '#all bookmarks' do
    it 'shows all bookmarks ' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.makersacademy.com/")
    end
  end
end
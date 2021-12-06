require 'bookmark'

describe Bookmark do
  describe '#all bookmarks' do
    it 'shows all bookmarks ' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.youtube.com")
    end
  end

end
feature 'Viewing bookmarks' do
  scenario 'see a list of bookmarks' do
    Bookmark.create(url: "http://www.makersacademy.com/")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com/")
    
    visit('/bookmarks')

    expect(page).to have_content "http://www.google.com/"
    expect(page).to have_content "http://www.makersacademy.com/"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end

end
  
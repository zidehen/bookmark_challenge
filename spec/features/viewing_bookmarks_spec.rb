feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'see a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.youtube.com"
  end
  
end
  
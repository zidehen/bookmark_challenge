feature 'Creating bookmarks' do
    scenario 'can add a bookmark to the list' do
      visit('/bookmarks/add')
      fill_in(:url, with: 'www.test.com')
      fill_in(:title, with: 'Test Bookmark')
      click_button('Add')
      expect(page).to have_link('Test Bookmark', href: 'www.test.com')
    end
end
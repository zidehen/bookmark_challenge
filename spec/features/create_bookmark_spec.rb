feature 'Creating bookmarks' do
    scenario 'can add a bookmark to the list' do
      visit('/bookmarks/add')
      fill_in('url', with: 'www.test.com')
      click_button('Add')
      expect(page).to have_content 'www.test.com'
    end
end
feature 'Creating bookmarks' do
  scenario 'can add a bookmark to the list' do
    visit('/bookmarks/add')
    fill_in(:url, with: 'http://www.test.com')
    fill_in(:title, with: 'Test Bookmark')
    click_button('Add')
    expect(page).to have_link('Test Bookmark', href: 'http://www.test.com')
  end

  scenario 'the bookmark must be a valid URL' do
    visit('/bookmarks/add')
    fill_in(:url, with: 'not a valid bookmark')
    click_button('Add')

    expect(page).not_to have_content "not a valid bookmark"
    expect(page).to have_content "You must submit a valid URL"
  end
end
feature 'Updating bookmarks' do
    scenario 'can update a bookmark from the list' do
      bookmark = Bookmark.create(url: "http://www.makersacademy.com/", title: "Makers Academy")
      visit('/bookmarks')
      expect(page).to have_link("Makers Academy", href: "http://www.makersacademy.com/")

      first('.bookmark').click_button('Edit')
      expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"
      
      fill_in(:url, with: "http://www.github.com")
      fill_in(:title, with: 'GitHub')
      click_button('Save')

      expect(current_path).to eq '/bookmarks'
      expect(page).not_to have_link("Makers Academy", href: "http://www.makersacademy.com/")
      expect(page).to have_link("GitHub", href: "http://www.github.com")
    end
    
end
feature 'Viewing bookmarks' do
  scenario 'see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com/');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com/');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    
    visit('/bookmarks')

    expect(page).to have_content "http://www.google.com/"
    expect(page).to have_content "http://www.makersacademy.com/"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end

end
  
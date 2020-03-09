feature 'test_page' do
    scenario "homepage displays correct text" do
        visit '/'
        expect(page).to have_content "hello world"
    end
 end

    feature "displays bookmarks" do
        scenario "User can view bookmarks" do
        visit '/bookmarks'

        expect(page).to have_content "http://www.makersacademy.com"
        expect(page).to have_content "http://www.destroyallsoftware.com"
        expect(page).to have_content "http://www.google.com"
    end
end
feature 'test_page' do
    scenario "homepage displays correct text" do
        visit '/'
        expect(page).to have_content "hello world"
    end
end
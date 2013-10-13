describe "Home page" do

  it "should have the content 'Lookup App'" do
      visit '/nav_page/home'
    expect(page).to have_content('Lookup App')
  end
end

feature "Signing in/out" do

  before do |example|
    unless example.metadata[:skip_before]
      sign_up
    end
  end

  scenario "User can sign in", :skip_before do
    visit '/spaces'
    expect(page).to have_button("Log in")
    expect(page).not_to have_button("Log out")
  end

  scenario "User can sign out" do
    expect(page).to have_button("Log out")
    expect(page).not_to have_button("Log in")
  end

  scenario "Revisiting signed in user can sign out" do
    sign_out
    sign_in
    expect(page).to have_button("Log out")
    expect(page).not_to have_button("Log in")
  end

  scenario "User receives welcome message when signed in" do
    sign_out
    sign_in
    expect(page).to have_content("Welcome Tester")
  end
end

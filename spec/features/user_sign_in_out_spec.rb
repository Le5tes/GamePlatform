feature "Signing in/out" do

  before do |example|
    unless example.metadata[:skip_before]
      sign_up
    end
  end

  scenario "User can log in", :skip_before, js: true do
    visit '/'
    expect(page).to have_button("Log In")
    click_button("opensidebar")
    expect(page).not_to have_button("Log Out")
  end

  scenario "User can sign out", js: true do
    click_button("opensidebar")
    expect(page).to have_button("Log Out")
  end

  scenario "Revisiting signed in user can sign out", js: true do
    click_button("opensidebar")
    click_button 'Log Out'
    sign_in
    click_button("opensidebar")
    expect(page).to have_button("Log Out")
  end

  scenario "User receives welcome message when signed in", js: true do
    click_button("opensidebar")
    click_button 'Log Out'
    sign_in
    click_button("opensidebar")
    expect(page).to have_content("tester")
  end
end

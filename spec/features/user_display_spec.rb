feature "User display" do

  before do |example|
    unless example.metadata[:skip_before]
      sign_up
    end
  end

  scenario "after logging in, the user can view their profile", js: true do
    click_button("opensidebar")
    expect(page).to have_content("tester")
    expect(page).to have_content("Status:")
    expect(page).to have_content("Overall Rank:")
  end

  scenario "a user can set their game status", js: true do
    click_button("opensidebar")
    click_button("Away")
    wait_for_ajax
    expect(page).to have_content("Status: Away")
  end

  # scenario "a user can set their profile status", js: true do
  #
  # end

  scenario "a users status will remain even after logging out", js: true do
    click_button("opensidebar")
    click_button("Away")
    expect(page).to have_content("Status: Away")
    click_button("Log Out")
    sign_in
    click_button("opensidebar")
    expect(page).to have_content("Status: Away")
  end
end

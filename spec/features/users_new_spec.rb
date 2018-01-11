feature "Signing up" do
  scenario "user signs up", js: true do
  	sign_up
    click_button("opensidebar")
  	expect(page).to have_content "tester"
  end

  scenario "User count increases by 1" do
    expect { sign_up }.to change { User.count }.by 1
  end
end

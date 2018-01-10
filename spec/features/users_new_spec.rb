feature "Signing up" do
  scenario "user signs up" do
  	sign_up
  	expect(page).to have_content "Welcome Tester"
  end

  scenario "User count increases by 1" do
    expect { sign_up }.to change { User.count }.by 1
  end
end

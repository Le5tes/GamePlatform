feature "Game page" do

  before do |example|
    unless example.metadata[:skip_before]
      sign_up
    end
  end

  scenario "after logging in you have the option go to the library of games" do
    expect(page).to have_content("Play")
  end

  scenario "the user can play a game" do
    click_button("Play")
    expect(page).to have_content("RPS")
  end

end

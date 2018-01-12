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

  scenario "a user can submit a game and then view the game" do
    click_button("Play")
    visit('games/new')
    fill_in('game_name', with: 'Game1')
    fill_in('game_type', with: 'Fun')
    fill_in('game_description', with: 'really coool game')
    fill_in('game_min_player_count', with: 2)
    fill_in('game_max_player_count', with: 4)
    click_button('Submit')
    expect(page).to have_content('Game1')
  end
end

feature 'Keyboard Fighter' do
  scenario 'can increase score when key pressed' do
    visit("/keyboard_fighter")
    fill_in('body'), with: '123'
    expect().to matcher
  end
end
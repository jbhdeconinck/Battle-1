require './app'

feature 'players attack each other' do
  scenario 'player 1 attackes player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Julien attacked George')
  end
end

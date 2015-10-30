require './app.rb'

# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'losing the battle' do
  scenario 'player loses the battle when he has lost all its hit points' do
    sign_in_and_play
      11.times do
        click_button 'Attack'
        click_button 'Back to play'
      end
    expect(page).to have_content("George loses the battle!")
  end
end

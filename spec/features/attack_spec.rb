require './app'

feature 'players attack each other' do

  scenario 'player 1 attackes player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Julien attacked George')
  end

  scenario 'player 1 attacks player 2 and reduces 2\'s HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Back to play'
    expect(page).not_to have_content('George\'s HP: 60')
    expect(page).to have_content('George\'s HP: 50')
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation

  scenario 'player 2 attacks player 1 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Back to play'
    click_button 'Attack'
    expect(page).to have_content('George attacked Julien')
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP

  scenario 'player 2 attacks player 1 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Back to play'
    click_button 'Attack'
    expect(page).not_to have_content('Julien\'s HP: 60')
    expect(page).to have_content('Julien\'s HP: 50')
  end

end

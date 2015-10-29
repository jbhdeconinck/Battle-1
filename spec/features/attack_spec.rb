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
    expect(page).not_to have_content('George\'s HP: 60')
    expect(page).to have_content('George\'s HP: 50')
  end
end

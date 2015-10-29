require './app'

  feature 'Players enter their names' do
    scenario 'player 1 enters their name' do
      visit('/')
      fill_in(:player_name_1, with: 'Amy')
      fill_in(:player_name_2, with: 'George')
      click_button 'Submit'
      expect(page).to have_content('Amy vs. George')
    end
  end

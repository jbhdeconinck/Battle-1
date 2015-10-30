require './app'

  feature 'Players enter their names' do
    scenario 'player 1 enters their name' do
      sign_in_and_play
      expect(page).to have_content('Julien vs. George')
    end
  end

  feature "See other player's hit points" do
    scenario "player 1 sees player 2's hit points" do
      sign_in_and_play
      expect(page).to have_content('George\'s HP: 60')
    end

# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

    scenario "player 1 sees its hit points" do
      sign_in_and_play
      expect(page).to have_content('Julien\'s HP: 60')
    end
  end

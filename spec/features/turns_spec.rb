require './app.rb'

# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature 'managing turns' do
  scenario 'indicating whose turn it is' do
    sign_in_and_play
    expect(page).to have_content('Julien\'s turn to attack')
  end

  scenario 'switching turns' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content('Julien\'s turn to attack')
    expect(page).to have_content('George\'s turn to attack')
  end
end

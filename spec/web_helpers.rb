def sign_in_and_play
  visit('/')
  fill_in(:player_name_1, with: 'Julien')
  fill_in(:player_name_2, with: 'George')
  click_button 'Submit'
end

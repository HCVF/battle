def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Henry'
  fill_in 'player2', with: 'Rob'
  click_button 'Submit'
end
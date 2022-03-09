feature 'Testing form' do
  scenario 'players can add their names' do
    sign_in_and_play
    expect(page).to have_text('Henry vs. Rob')
  end
end
feature "View Hitpoints" do
  scenario "Player 1 can see Player 2's Hitpoints" do
    sign_in_and_play
    expect(page).to have_text("Rob has 99HP")
  end
end
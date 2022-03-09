feature "Attack player" do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button(name: "attack_player_2")
    expect(page).to have_text("Rob has 69HP")
  end
end
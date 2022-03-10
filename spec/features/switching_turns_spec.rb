feature "Switching Turns" do
  scenario "Game switches to player 2 once player 1 attacked" do
    sign_in_and_play
    fill_in(name: "value", with: "30")
    click_button(name: "attack_player")
    expect(page).to have_button(name: "attack_player", text: "Rob attack Henry!")
  end
end
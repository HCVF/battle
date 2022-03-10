feature "game over" do
  scenario "Player 2 dies" do
    sign_in_and_play
    fill_in(name: "value", with: "99")
    click_button(name: "attack_player")
    expect(page).to have_text("GAME OVER! Henry wins")
  end
  scenario "Player 1 dies" do
    sign_in_and_play
    fill_in(name: "value", with: "10")
    click_button(name: "attack_player")
    fill_in(name: "value", with: "99")
    click_button(name: "attack_player")
    expect(page).to have_text("GAME OVER! Rob wins")
  end
end
feature "game over" do
  scenario "Player 2 dies" do
    allow_any_instance_of(Game).to receive(:random_damage).and_return(10)
    sign_in_and_play
    19.times { click_button(name: "attack_player") }
    expect(page).to have_text("GAME OVER! Henry wins")
  end
  scenario "Player 1 dies" do
    sign_in_and_play
    click_button(name: "attack_player")
    click_button(name: "attack_player")
    expect(page).to have_text("GAME OVER! Rob wins")
  end
end
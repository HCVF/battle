feature "Attack player" do
  scenario "Player 1 attacks Player 2" do
    allow_any_instance_of(Game).to receive(:random_damage).and_return(10)
    sign_in_and_play
    click_button(name: "attack_player")
    click_button(name: "attack_player")
    expect(page).to have_text("Rob has 89HP")
  end
end
feature 'user displays hit points' do
  scenario 'player 2 displays hit points' do
    sign_in_and_play
    expect(page).to have_content "Josh : #{Player::DEFAULT_HP} HP"
  end
end

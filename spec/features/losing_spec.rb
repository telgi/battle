feature 'Game outcome' do
  scenario 'player loses if they reach 0hp' do
    sign_in_and_play
    9.times { attack_cycle }
    click_button("Attack Player 2")
    expect(page).to have_content "Josh loses because they are a loser"
  end
end

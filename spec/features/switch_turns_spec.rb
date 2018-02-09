feature 'Switching turns' do
  scenario 'switches to player 2 after player 1 attacks' do
    p1_attacks
    click_button "Next turn"
    click_button "Attack Player 1"
    expect(page).to have_content "Terry is hurt badly"
  end
end

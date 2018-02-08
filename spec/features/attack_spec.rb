feature 'attacking players' do
  scenario 'player 1 attacks player 2' do
    p1_attacks
    expect(page).to have_content("Josh is hurt badly")
  end
end

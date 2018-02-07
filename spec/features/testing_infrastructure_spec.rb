feature "Battle" do

  scenario 'user opens home page' do
    visit "/"
    expect(page).to have_text("Battle!!!")
  end

  scenario 'player_1 enters their name' do
    visit '/'
    fill_in "player_1", with: "Terry"
    expect(page).to have_field('player_1', with: 'Terry')
  end

  scenario 'player_2 enters their name' do
    visit '/'
    fill_in "player_2", with: "LoolouMcgoo"
    expect(page).to have_field('player_2', with: 'LoolouMcgoo')
  end

end

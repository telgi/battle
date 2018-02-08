feature 'user displays hit points' do
  scenario 'player 2 displays hit points' do
    visit '/'
    fill_in :player_1, with: 'Terry'
    fill_in :player_2, with: 'LoolouMcgoo'
    click_button 'Submit'
    expect(page).to have_content 'LoolouMcgoo : 100hp'
  end
end

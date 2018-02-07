feature "Battle" do

  scenario 'user opens home page' do
    visit "/"
    expect(page).to have_text("Battle!!!")
  end

feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in :player_1, with: 'Terry'
    fill_in :player_2, with: 'LoolouMcgoo'
    click_button 'Submit'
    expect(page).to have_content 'Terry VS LoolouMcgoo'
  end
end

end

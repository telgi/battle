# require "app"

feature "Battle" do

  scenario 'user opens home page' do
    visit "/"
    expect(page).to have_text("Battle!!!")
  end

  scenario 'users enter their names in a form' do
    visit '/'
    fill_in "player_1", with: "Terry"
    fill_in "player_2", with: "LoolouMcgoo"
    click_on "Submit"
    expect(page).to have_text("Terry")
  end

end

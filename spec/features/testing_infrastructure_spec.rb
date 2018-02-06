# require "app"

feature "Battle" do

  scenario 'user opens home page' do
    visit "/"
    expect(page).to have_text("Battle!!!")
  end

end

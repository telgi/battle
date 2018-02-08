feature 'damage done' do
  scenario 'player 2 receives an attack' do
    p1_attacks
    # change this line and add attack method in route
    expect(page).to have_content "90 HP"
  end
end

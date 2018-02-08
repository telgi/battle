feature 'damage done' do

  #player2 = Player.new('Joshie the Poo')

  scenario 'player 2 receives an attack' do
    p1_attacks
    expect(page).to have_content "90 HP"
    ### This goes into the Unit Test
    #expect(player2.hp).to eq("#{Battle::MAX_HP - Battle::BASIC_ATTACK}")
  end
end
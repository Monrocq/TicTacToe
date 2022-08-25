require 'player'

RSpec.describe Player do
  context 'when we init the party' do
    def createPlayer(name)
      allow($stdin).to receive(:gets).and_return(name)
      expect(Player.new.name).to eq(name)
    end
    it 'should create the first player object' do
      createPlayer('Loli')
    end
    it 'should not create more than 2 players object' do
      createPlayer('Adel')
      expect{createPlayer('Seb')}.to raise_error('Seulement deux joueurs peuvent jouer en même temps !');
    end
  end
end
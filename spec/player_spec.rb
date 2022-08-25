require 'player'

RSpec.describe Player do
  context 'when no Player already exists' do
    subject(:new_player) { Player.new }

    let(:name1) { 'Adel' } # Should be a Faker name
    let(:name2) { 'Ocin' } # Should be a Faker name

    it 'creates a player with X' do
      allow($stdin).to receive(:gets).and_return(name1)
      expect(new_player.mark).to eq('X')
      expect(new_player.name).to eq(name1)
    end

    it 'creates a player with O' do
      allow($stdin).to receive(:gets).and_return(name2)
      expect(new_player.mark).to eq('O')
      expect(new_player.name).to eq(name2)
    end

    it 'cannot create a third player' do
      expect { new_player }.to raise_error('Seulement deux joueurs peuvent jouer en même temps !')
    end
  end
end
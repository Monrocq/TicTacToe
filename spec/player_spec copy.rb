require 'player'

RSpec.describe Player do
  context 'when we init the party' do
    let(:user1) {Player.new}
    let(:user2) {Player.new}
    let(:user3) {Player.new}
    it 'should create the first player object' do
      allow($stdin).to receive(:gets).and_return('Adel')
      expect(user1.name).to eq('Adel')
    end
    it 'should not create more than 2 players object' do
      allow($stdin).to receive(:gets).and_return('Seb')
      expect(user2.name).to eq('Seb')
      allow($stdin).to receive(:gets).and_return('Loli')
      expect{expect(user3.name).to eq('Loli')}.to raise_error('Seulement deux joueurs peuvent jouer en même temps !');
    end
  end
end
require 'simplecov'
SimpleCov.start
require 'game'

RSpec.describe Game do
  context 'During the init' do
    subject(:new_player) { Player.new }
    let(:name1) { 'Adel' } # Should be a Faker name
    let(:name2) { 'Ocin' } # Should be a Faker name
    it 'should launch party' do
      allow($stdin).to receive(:gets).and_return(name1)
      expect(new_player.name).to eq(name1)
      allow($stdin).to receive(:gets).and_return(name2)
      expect(new_player.name).to eq(name2)
    end
    it 'launch the game'
  end
  context 'After init' do
    it 'verify that each player have entered their names'
  end
  context 'When it the turn of a player' do
    it 'should ask a position to the player'
    it 'verify that the input is valid'
    it 'should check that the case is well filled'
  end
  context 'between each turn' do
    it 'verify is a player have winned'
    it 'refresh the board'
  end
end
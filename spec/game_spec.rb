require 'game'

RSpec.describe Game do
  context 'During the init' do
    it 'should having created each variables'
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
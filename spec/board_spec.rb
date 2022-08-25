require 'board'

RSpec.describe Board do
  let(:positions) {[2,2]}
  let(:position) {Position.new(*positions)}
  let(:mark) {'X'}
  context 'When we want to tick a case' do
    it 'should indicate if the position is not valid' do
      expect(subject.valid?(position)).to be_truthy
    end
    it 'should mark a case' do
      expect(subject.set(mark, position))
    end
    it 'should get the position' do
      expect(subject.get(position)).to eq(' ')
    end
    it 'can indicate if we have a winner' do
      expect(subject.win?).to be_truthy
    end
  end
  context 'During the party' do
    it 'shows the board' do
      expect{subject.show}.to output(/^[a-zA-Z0-9]+/).to_stdout
    end
  end
end
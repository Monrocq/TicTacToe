require 'position'

RSpec.describe Position do
  let(:number) {3}
  let!(:position) {Position.new(number, number)}
  context 'when we instantiate a position' do
    it 'should use the factory constructor' do
      expect(Position.from_string('b2')).to be_a(Position)
    end
    it 'should init a col position' do
      expect(position.col).to eq(number)
    end
    it 'should init a row position' do
      expect(position.row).to eq(number)
    end
  end
  context 'when we subject is not init' do
    it 'should return nil' do
      expect(subject.nil?).to be_truthy
    end
    it 'should return the coordinate of the position' do
      expect(subject.from_string('b2')).to eq(1)
      expect(subject.to_s).to eq('b2')
    end
  end
  context "when we want to instantiate the same position" do
    it "should say that it is the same position" do
      expect(position.==(Position.new(number, number))).to be_truthy
    end
  end
end
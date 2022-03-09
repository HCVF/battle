require 'player'

describe Player do
  describe '#initialize' do
    subject { described_class.new('Henry') }
    it 'remembers the name' do
      expect(subject.name).to eq('Henry')
    end
  end
end
require '../array.rb'

describe Array do
  describe "#median" do
    subject { arr.median }

    context 'empty array' do
      let(:arr) { [] }

      it 'returns nil' do
        expect(subject).to eq nil
      end
    end

    context 'single value' do
      let(:arr) { [1] }

      it 'returns value' do
        expect(subject).to eq 1
      end
    end

    context 'two values' do
      let(:arr) { [1,2] }

      it 'returns median of two values' do
        expect(subject).to eq 1.5
      end
    end

    context 'odd-size array' do
      let(:arr) { [1,6,3,5,8,9,4,10,2] }

      it 'returns the median based on the mean of the middle two values' do
        expect(subject).to eq 5
      end
    end

    context 'even-size array' do
      let(:arr) { [1,6,3,5,8,9,4,10,2,7] }

      it 'returns the median based on the middle most value' do
        expect(subject).to eq 5.5
      end
    end
  end
end

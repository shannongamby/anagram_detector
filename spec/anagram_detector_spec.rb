require 'anagram_detector'

describe AnagramDetector do
  context 'detecting presence of anagrams' do
    it 'should return a message confirming anagram presence' do
      expect(subject.detect_anagram('cars', %w[hi hello scar])).to eq 'Anagram detected.'
    end
  end

  context 'detecting absence of anagrams' do
    it 'should return a message confirming anagram absence' do
      expect(subject.detect_anagram('cars', %w[hi hello howdy])).to eq 'No anagrams found.'
    end
  end
end

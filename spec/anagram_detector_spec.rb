require 'anagram_detector'

describe AnagramDetector do
  context 'detecting presence of anagrams' do
    it 'should return true when an anagram is present' do
      expect(subject.detect_anagram('cars', %w[hi hello scar])).to eq true
    end
    it 'should return true when an anagram is present regardless of letter case' do
      expect(subject.detect_anagram('caRs', %w[hi hello Scar])).to eq true
    end
  end

  context 'detecting absence of anagrams' do
    it 'should return false when an anagram is not present' do
      expect(subject.detect_anagram('cars', %w[hi hello howdy])).to eq false
    end
    it 'should return false when list of words is empty' do
      expect(subject.detect_anagram('cars', %w[])).to eq false
    end
  end
end

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

  context 'word should only contain letters' do
    it 'raises an error if word contains a number' do
      expect{subject.detect_anagram('1234', %w[hi hello howdy])}.to raise_error 'Invalid character'
    end
    it 'raises an error if word contains punctuation' do
      expect{subject.detect_anagram('a!@$z', %w[hi hello howdy])}.to raise_error 'Invalid character'
    end
  end
end

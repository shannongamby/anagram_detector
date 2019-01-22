class AnagramDetector
  def solve(word, list)
    sorted_word = word.chars.sort.join('')
    sorted_list = sort_words(list)
    if sorted_list.include?(sorted_word)
      'Anagram detected.'
    else
      'No anagrams found.'
    end
  end

  def sort_words(list)
    list.map { |word| word.chars.sort.join('') }
  end
end

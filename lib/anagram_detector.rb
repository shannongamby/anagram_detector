class AnagramDetector
  def detect_anagram(word, list)
    check(word)
    sorted_word = sort(word)
    sorted_list = sort_words(list)
    sorted_list.include?(sorted_word) ? true : false
  end

  private

  def check(word)
    raise 'Invalid character' if word != word[/[a-zA-Z]+/]
  end

  def sort_words(list)
    list.map { |word| sort(word) }
  end

  def sort(word)
    word.downcase.chars.sort.join('')
  end
end

require './lib/anagram_detector.rb'

ad = AnagramDetector.new

puts 'Type the list of words you want to check against (separated by single spaces):'
list = gets.chomp.split(' ')

puts 'Type the word you would like to check:'
word = gets.chomp

puts(ad.detect_anagram(word, list) ? 'Anagram detected.' : 'No anagram found.')

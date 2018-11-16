def anagram_match(word_one, word_two)
  word_one = word_one.split('')
  word_two = word_two.split('')
  if word_one.sort == word_two.sort
    return true
  else
    return false
  end
end

def word_has_vowel(word)
  vowels = ['a','e','i','o','u']
  word = word.split('')
  vowels.any? { |vowel| word.include?(vowel) }
end

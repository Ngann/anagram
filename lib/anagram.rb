def words_match(word_one, word_two)
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
  word.any? {|letter| vowels.include?(letter)}
end

def these_are_words(word_one, word_two)
 if (word_has_vowel(word_one) & word_has_vowel(word_two))
   return true
 else
   return false
 end
end

def both_words_are_anagram(word_one, word_two)
  if these_are_words(word_one, word_two) & words_match(word_one, word_two)
    return "These words are anagrams"
  elsif these_are_words(word_one, word_two) & is_antigram(word_one, word_two)
    return "These words are antigrams"
  end
end

def is_antigram(word_one, word_two)
  word_one = word_one.split('')
  word_two = word_two.split('')
  if word_one.sort != word_two.sort
    return true
  else
    return false
  end
end

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

def words_match(word_one, word_two)
  word_one = word_one.split('')
  word_two = word_two.split('')
  if word_one.sort == word_two.sort
    return true
  else
    return false
  end
end


def both_words_are_anagram(word_one, word_two)
  if these_are_words(word_one, word_two) & words_match(word_one, word_two)
    return "is an anagram"
  else
    puts "#{word_one} is a word? #{word_has_vowel(word_one) }"
    puts "#{word_two} is a word? #{word_has_vowel(word_two) }"
    puts "Please enter only words!"
  end
end

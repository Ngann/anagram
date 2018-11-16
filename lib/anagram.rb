def initialize()
  @word_one = word_one
  @word_two = word_two
end

def words_match(word_one, word_two)
  word_one = word_one.split('')
  word_two = word_two.split('')
  if Regexp.new(word_one, Regexp::IGNORECASE).sort ==  Regexp.new(word_two, Regexp::IGNORECASE).sort
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

def anagram_or_antigram(word_one, word_two)
  if these_are_words(word_one, word_two) == false
    puts "#{word_one} is a word? #{word_has_vowel(word_one) }"
    puts "#{word_two} is a word? #{word_has_vowel(word_two) }"
    return "Please enter only words"
  elsif words_match(word_one, word_two)
    return "These words are anagrams"
  elsif is_antigram(word_one, word_two) == false
    return "These words are antigrams"
  else
    return "These are words but neither anagrams or antigrams"
  end
end

def is_antigram(word_one, word_two)
  word_one = word_one.split('')
  word_two = word_two.split('')
  word_one.any? {|letter| word_two.include?(letter)}
end

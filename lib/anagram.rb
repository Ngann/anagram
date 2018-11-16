def words_match(word_one, word_two)
  word_one = word_one.downcase
  word_one_to_array = word_one.split('')
  word_two = word_two.downcase
  word_two_to_array = word_two.split('')
  if word_one_to_array.sort == word_two_to_array.sort
    return true
  else
    return false
  end
end

def word_has_vowel(word)
  vowels = ['a','e','i','o','u']
  word = word.downcase
  word_to_array = word.split('')
  word_to_array.any? {|letter| vowels.include?(letter)}
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

def words_in_a_phrase (phrase)
  phrase = phrase.split()
  is_a_word = []
  is_not_a_word = []
  phrase.each do |i|
    if word_has_vowel(i)
      is_a_word.push(i)
    # puts "#{i} a word? #{word_has_vowel(i)} "
    else
      is_not_a_word.push(i)
      # puts "#{i} is a word? #{word_has_vowel(i)} "
    end
  end
   return  is_a_word
end

def words(word)
  word = word.downcase
  word_to_array = word.split('')
end

def input_is_a_word(word)
  vowels = ['a','e','i','o','u']
  word_to_array = words(word)
  word_to_array.any? {|letter| vowels.include?(letter)}
end

def words_match(word_one, word_two)
  word_one_to_array = words(word_one)
  word_two_to_array = words(word_two)
  if word_one_to_array.sort == word_two_to_array.sort
    return true
  else
    return false
  end
end

def these_are_words(word_one, word_two)
  if (input_is_a_word(word_one) & input_is_a_word(word_two))
    return true
  else
    return false
  end
end

def anagram(word_one, word_two)
  if these_are_words(word_one, word_two) == false
    puts "Is #{word_one} a word? #{input_is_a_word(word_one) }"
    puts "Is #{word_two} a word? #{input_is_a_word(word_two) }"
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
  word_one = words(word_one)
  word_two = words(word_two)
  word_one.any? {|letter| word_two.include?(letter)}
end

def phrase_to_array(phrase)
  phrase = phrase.gsub(/[^A-Za-z0-9 ]/, '')
  phrase = phrase.downcase
  phrase = phrase.split()
end

def words_in_a_phrase(phrase)
  phrase = phrase_to_array(phrase)
  compare = anagram(phrase[0],phrase[1])
  compare
end

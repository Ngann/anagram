class Anagrams

  def initialize (phrase_one, phrase_two)
    @phrase_one = phrase_one
    @phrase_two = phrase_two
  end

  def words(word)
    word = word.gsub(/[^A-Za-z0-9 ]/, '')
    word = word.downcase.gsub(/\s+/, '')
    return word_to_array = word.split('')
  end

  def input_is_a_word(word)
    vowels = ['a','e','i','o','u']
    word_to_array = words(word)
    word_to_array.any? {|letter| vowels.include?(letter)}
  end

  def word_string
    word_one_to_array = words(@phrase_one).join("")
    word_two_to_array = words(@phrase_two).join("")
    return "#{word_one_to_array} , #{word_two_to_array}"
  end

  def words_match
    word_one_to_array = words(@phrase_one)
    word_two_to_array = words(@phrase_two)
    if word_one_to_array.sort == word_two_to_array.sort
      return true
    else
      return false
    end
  end

  def these_are_words
    if (input_is_a_word(@phrase_one) & input_is_a_word(@phrase_two))
      return true
    else
      return false
    end
  end

  def anagram
    if these_are_words == false
      puts "Is #{@phrase_one} a word? #{input_is_a_word(@phrase_one) }"
      puts "Is #{@phrase_two} a word? #{input_is_a_word(@phrase_two) }"
      return "Please enter only words"
    elsif words_match
      return "These words are anagrams"
    elsif is_antigram == false
      return "These words are antigrams"
    else
      return "These are words but neither anagrams or antigrams"
    end
  end

  def is_antigram
    word_one = words(@phrase_one)
    word_two = words(@phrase_two)
    word_one.any? {|letter| word_two.include?(letter)}
  end

end

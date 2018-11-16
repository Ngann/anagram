def anagram(word_one, word_two)
  if word_one.include?("r") & word_two.include?("r")
    return true
  else
    return false
  end
end

def anagram_match(word_one, word_two)
  word_one = word_one.split('')
  word_two = word_two.split('')
  if word_one.sort == word_two.sort
    return true
  else
    return false
  end
end

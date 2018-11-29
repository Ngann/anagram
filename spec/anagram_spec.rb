require('anagram')
require('rspec')

describe(Anagrams) do

  describe('#words_match') do
      it('returns true if the words contains the same letter') do
      test_word = Anagrams.new('Ruby','bury')
      expect(test_word.words_match()).to(eq(true))
    end
  end

  describe('#these_are_words') do
      it('returns true if both inputs are words') do
      test_word = Anagrams.new('RuBy','Bury')
      expect(test_word.these_are_words()).to(eq(true))
    end
  end

  describe('#word_string') do
      it('returns the input without special characters and spaces') do
      test_word = Anagrams.new("What's is?","that's It!")
      expect(test_word.word_string()).to(eq("whatsis , thatsit"))
    end
  end

  describe('#is_antigram') do
      it('returns true if the words are antigrams') do
      test_word = Anagrams.new('ruby','holT')
      expect(test_word.is_antigram()).to(eq(true))
    end
  end

  describe('#anagram') do
      it('returns result for antigrams') do
      test_word = Anagrams.new('ruby','holT')
      expect(test_word.anagram()).to(eq("These words are antigrams"))
    end
  end

  describe('#anagram') do
      it('returns result for anagrams') do
      test_word = Anagrams.new('Lose it','sole it')
      expect(test_word.anagram()).to(eq("These words are anagrams"))
    end
  end

  describe('#anagram') do
      it('returns result for neither anagrams or antigrams') do
      test_word = Anagrams.new("What's thAt?", "That's Nothing!")
      expect(test_word.anagram()).to(eq("These are words but neither anagrams or antigrams"))
    end
  end

  describe('#anagram') do
      it('returns result for inputs which are not words') do
      test_word = Anagrams.new("mmmmm nnnn", "nnkggd")
      expect(test_word.anagram()).to(eq("Please enter only words"))
    end
  end

  describe('#anagram') do
      it('returns result for anagrams') do
      test_word = Anagrams.new("shatt it", "that's it")
      expect(test_word.anagram()).to(eq("These words are anagrams"))
    end
  end

end

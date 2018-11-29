require('anagram')
require('rspec')

describe(Anagrams) do

  describe('#words_match') do
      it('returns true if the words contains the same letter') do
      test_word = Anagrams.new('ruby','bury')
      expect(test_word.words_match()).to(eq(true))
    end
  end

  describe('#words_match') do
      it('returns true if the words contains the same letter') do
      test_word = Anagrams.new('Ruby','Bury')
      expect(test_word.words_match()).to(eq(true))
    end
  end

  describe('#these_are_words') do
      it('returns true if both inputs are words') do
      test_word = Anagrams.new('ruby','bury')
      expect(test_word.these_are_words()).to(eq(true))
    end
  end

  describe('#these_are_words') do
      it('returns true if both inputs are words') do
      test_word = Anagrams.new('Ruby','Bury')
      expect(test_word.these_are_words()).to(eq(true))
    end
  end

  describe('#word_string') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new("What's is?","that's It!")
      expect(test_word.word_string()).to(eq("whatsis , thatsit"))
    end
  end

  describe('#is_antigram') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new('ruby','holT')
      expect(test_word.is_antigram()).to(eq(false))
    end
  end

  describe('#anagram') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new('ruby','holT')
      expect(test_word.anagram()).to(eq("These words are antigrams"))
    end
  end

  describe('#anagram') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new('Lose it','sole it')
      expect(test_word.anagram()).to(eq("These words are anagrams"))
    end
  end

  describe('#anagram') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new("What's thAt?", "That's Nothing!")
      expect(test_word.anagram()).to(eq("These are words but neither anagrams or antigrams"))
    end
  end

  describe('#anagram') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new("mmmmm nnnn", "nnkggd")
      expect(test_word.anagram()).to(eq("Please enter only words"))
    end
  end

  describe('#anagram') do
      it('returns false if the words do not contain the same letter') do
      test_word = Anagrams.new("hits att", "that's it")
      expect(test_word.anagram()).to(eq("These words are anagrams"))
    end
  end

end

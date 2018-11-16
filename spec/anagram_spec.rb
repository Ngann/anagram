require('anagram')
require('rspec')

describe('#words_match') do
    it('returns true if the words contains the same letter') do
    expect(words_match('ruby','bury')).to(eq(true))
  end
end

describe('#words_match') do
    it('returns true if the words contains the same letter') do
    expect(words_match('Ruby','Bury')).to(eq(true))
  end
end

describe('#word_has_vowel') do
    it('returns true if the word contain a vowel') do
    expect(word_has_vowel('hat')).to(eq(true))
  end
end

describe('#word_has_vowel') do
    it('returns true if the word contain a vowel') do
    expect(word_has_vowel('hAt')).to(eq(true))
  end
end

describe('#these_are_words') do
    it('returns true if both inputs are words') do
    expect(these_are_words('ruby','bury')).to(eq(true))
  end
end

describe('#these_are_words') do
    it('returns true if both inputs are words') do
    expect(these_are_words('Ruby','Bury')).to(eq(true))
  end
end

describe('#anagram_or_antigram') do
    it('returns true if the words are anagrams') do
    expect(anagram_or_antigram('sally','allys')).to(eq('These words are anagrams'))
  end
end

describe('#anagram_or_antigram') do
    it('returns true if the words are antigrams') do
    expect(anagram_or_antigram('sally','ditch')).to(eq('These words are antigrams'))
  end
end

describe('#is_antigram') do
    it('returns false if the words contains the same letter') do
    expect(is_antigram('ruby','holt')).to(eq(false))
  end
end

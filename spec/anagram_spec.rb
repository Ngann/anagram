require('anagram')
require('rspec')


describe('#word_has_vowel') do
    it('returns true if the word contain a vowel') do
    expect(word_has_vowel('hat')).to(eq(true))
  end
end

describe('#these_are_words') do
    it('returns true if both inputs are words') do
    expect(these_are_words('ruby','bury')).to(eq(true))
  end
end

describe('#words_match') do
    it('returns true if the words contains the same letter') do
    expect(words_match('ruby','bury')).to(eq(true))
  end
end

describe('#both_words_are_anagram') do
    it('returns true if the words contains the same letter') do
    expect(both_words_are_anagram('sally','allys')).to(eq('is an anagram'))
  end
end

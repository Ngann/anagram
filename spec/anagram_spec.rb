require('anagram')
require('rspec')

describe('#anagram_match') do
    it('returns true if the words contains the same letter') do
    expect(anagram_match('ruby','bury')).to(eq(true))
  end
end

describe('#word_has_vowel') do
    it('returns true if the word contain a vowel') do
    expect(word_has_vowel('hat')).to(eq(true))
  end
end

require('anagram')
require('rspec')

describe('#anagram') do
  it('returns true if the the words contain the letter r') do
    expect(anagram('ruby','bury')).to(eq(true))
  end
end

describe('#anagram_match') do
    it('returns true if the words contains the same letter') do
    expect(anagram('ruby','bury')).to(eq(true))
  end
end

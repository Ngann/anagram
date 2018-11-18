require('anagram')
require('rspec')

describe('#words') do
  it('return array of a word') do
    expect(words('hat')).to(eq(['h','a','t']))
  end
end

describe('#words') do
  it('returns array of a word') do
    expect(words('hAt')).to(eq(['h','a','t']))
  end
end

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

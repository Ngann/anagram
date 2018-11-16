require('anagram')
require('rspec')


describe('#anagram') do
  it('does the word contain the letter r?') do
    expect(anagram('ruby')).to(eq(true))
  end
end

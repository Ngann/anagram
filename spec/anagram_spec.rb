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

describe('#input_is_a_word') do
  it('returns true if the word contain a vowel') do
    expect(input_is_a_word('What')).to(eq(true))
  end
end

describe('#input_is_a_word') do
  it('returns true if the word contain a vowel') do
    expect(input_is_a_word('WhAt')).to(eq(true))
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

describe('#is_antigram') do
    it('returns false if the words do not contain the same letter') do
    expect(is_antigram('ruby','holT')).to(eq(false))
  end
end

describe('#phrase_to_array') do
    it('returns array of words in a phrase') do
    expect(phrase_to_array('check this string')).to(eq( ['check','this','string']))
  end
end

describe('#phrase_to_array') do
    it('returns array of words in a phrase without special character') do
    expect(phrase_to_array("We'd like to check this string")).to(eq( ['wed','like','to','check','this','string']))
  end
end

describe('#words_in_a_phrase') do
    it('returns is words in array are anagrams') do
    expect(phrase_to_array("We'd like to check this string")).to(eq( ['wed','like','to','check','this','string']))
  end
end

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

describe('#these_are_words') do
    it('returns true if both inputs are words') do
    expect(these_are_words('Ruby has a friend','Bury has a friend')).to(eq(true))
  end
end

describe('#anagram') do
    it('returns true if the words are anagrams') do
    expect(anagram('sally','allys')).to(eq('These words are anagrams'))
  end
end

describe('#anagram') do
    it('returns true if the words are antigrams') do
    expect(anagram('sally','ditch')).to(eq('These words are antigrams'))
  end
end

describe('#anagram') do
    it('returns true if the words are antigrams') do
    expect(anagram('sally','silly')).to(eq('These are words but neither anagrams or antigrams'))
  end
end

describe('#is_antigram') do
    it('returns false if the words do not contain the same letter') do
    expect(is_antigram('ruby','holt')).to(eq(false))
  end
end

describe('#words_in_a_phrase') do
    it('returns array of words in a phrase') do
    expect(words_in_a_phrase('check this string')).to(eq( ['check','this','string']))
  end
end

describe('#words_in_a_phrase') do
    it('returns array of words in a phrase without special character') do
    expect(words_in_a_phrase("We'd like to check this string")).to(eq( ['wed','like','to','check','this','string']))
  end
end

describe('#compare__words_in_array') do
    it('returns words in array which are anagrams') do
    expect(compare__words_in_array("Ruby BUry But You")).to(eq( ['Ruby','BUry']))
  end
end

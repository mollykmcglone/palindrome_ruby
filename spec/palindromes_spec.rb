require('rspec')
require('palindromes')

describe('String#palindromes?') do
  it('determines whether a string is a palindrome') do
    expect(('bob').palindromes?()).to(eq("is a palindrome"))
  end
  it('handles larger palindromes') do
    expect(('racecar').palindromes?()).to(eq("is a palindrome"))
  end
  it('returns false for words that are not palindromes') do
    expect(('how are you doing').palindromes?()).to(eq("is not a palindrome"))
  end
  it('handles large palindromes with spaces') do
    expect(('go hang a salami im a lasagna hog').palindromes?()).to(eq("is a palindrome"))
  end
end

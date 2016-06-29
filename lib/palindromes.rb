require('pry')

class String
  define_method(:palindromes?) do
    characters = self.gsub(/\s+/, "")
    characters_array = characters.split('')
    reversed_characters = []
    characters_array.each do |character|
      reversed_characters.unshift(character)
    end
    reversed_string = reversed_characters.join('')
    if reversed_string == characters
      # true
      "is a palindrome"
    else
      # false
      "is not a palindrome"
    end
  end
end

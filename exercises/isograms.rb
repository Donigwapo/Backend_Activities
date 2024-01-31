require 'set'

def is_isogram(word)
  seen_letters = Set.new

  word.downcase.each_char do |letter|
    return false if seen_letters.include?(letter)
    seen_letters.add(letter)
  end

  true
end

puts is_isogram("Dermatoglyphics")
puts is_isogram("regulations")
puts is_isogram("aba")
puts is_isogram("moOse")
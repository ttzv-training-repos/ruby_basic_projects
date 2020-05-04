def get_ord (str)
  str.split('').each {|char| puts char << ' ' << char.ord.to_s}
end

def caesar (text, shift)
  alphabet = 'abcdefghijklmnopqrstuwvxyz'
  alphabet_upper = alphabet.upcase
  encrypted = text.split('').map do |char|
    if alphabet.include?(char)
      char = alphabet[wrapIndex(alphabet.index(char) + shift, alphabet.length)]
    elsif alphabet_upper.include?(char)
      char = alphabet_upper[wrapIndex(alphabet_upper.index(char) + shift, alphabet_upper.length)]
    else
      char
    end
  end
  encrypted.join('')
end

def wrapIndex(value, max_value)
  if value > 0
    return (max_value + value) % max_value
  else
    return value % max_value
  end
end

puts caesar "Hello, World!",-15
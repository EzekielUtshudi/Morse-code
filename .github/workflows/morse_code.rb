@alpha_to_morse = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----',
  ' ' => '/'
}

def morse_to_alpha_map
  @alpha_to_morse.invert
end

def decode_char(str)
  morse_to_alpha_map[str].upcase
end

def decode_word(str)
  str.split.map { |char| decode_char(char) }.join
end

def morse_to_alpha(str)
  str.split('   ').map { |word| decode_word(word) }.join(' ')
end

# Bonus
# def alpha_to_morse(str)
#   str.char.map { |letter| alpha_to_morse[letter] }.join(' ')
# end

printf(morse_to_alpha('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
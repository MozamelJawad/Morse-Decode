CODES_CHAR = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# decode char function
def decode_char(val)
  CODES_CHAR[val]
end

char = decode_char('.-')
puts char

# decode word function

def decode_word(word)
  letters = word.split
  decoded_word = ''
  letters.each do |letter|
    decoded_char = decode_char(letter)
    decoded_word += decoded_char if decoded_char
  end
  decoded_word
end

puts decode_word('-- -.--')

# decode function
def decode(morse_text)
  words = morse_text.split('   ')
  decoded_text = ''
  words.each do |word|
    decoded_text += "#{decode_word(word)} "
  end
  decoded_text.strip
end

# decoding messages
my_name = '-- -.--   -. .- -- .'
puts decode(my_name)

morse = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(morse)

@character = {
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
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}

def get_char(char)
  @character[char]
end
puts get_char('.-')

def get_word(words)
  morse_word = words.split
  word = ''
  morse_word.each do |char|
    word += get_char(char)
  end
  word
end
puts get_word('-- -.--')

def get_sentence(bottole_sentence)
  morse_sentence = bottole_sentence.split('  ')
  sentence = ''
  morse_sentence.each do |char|
    sentence += get_word(char)
    sentence += ' '
  end
  sentence
end
puts get_sentence(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

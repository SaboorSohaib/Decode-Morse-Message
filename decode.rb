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

def getChar(char)
    @character[char]
end
puts getChar(".-")
    
def getWord(words)
    morseWord = words.split
    word = ''
    morseWord.each do |char|
        word += getChar(char)
    end
    word
end
puts getWord("-- -.--")

def getSentence(bottole_sentence)
    morseSentence = bottole_sentence.split(' ')
    sentence = ''
    morseSentence.each do |char|
        sentence += getWord(char)
        sentence += ''
    end
    sentence
end
puts getSentence(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")


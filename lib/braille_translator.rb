require './lib/dictionary'
require './lib/braille_file_converter'

class BrailleTranslator

  def get_braille_letters_into_string(input)
    @array1 = []
    strings = input.split
    letter_count = (input.split[0].length)/2
    letter_count.times do
     strings.each do |string|
       @array1 << [string.slice!(0..1)]
     end
   end
   @array1.join
 end

 def get_braille_letters(input)
 result = []
 seperated = get_braille_letters_into_string(input).scan(/.{6}/)
 seperated.each_slice(1){|string| result << [string]}
 result.flatten(1)
end

def braille_strip(input)
  braille_dictionary = dictionary.invert
  hash = {}
  braille_dictionary.each do |k,v|
   hash[[k.join(" ").gsub(/\s+/, "")]] = v
  end
 hash
end

def braille_translator(input)
  word = []
  key = braille_strip(input)
   get_braille_letters(input).each do |array|
    word << key[array]
  end
 word.join("")
end

  def dictionary
    {
    "a" => ["0.", "..", ".."],
    "b" => ["0.", "0.", ".."],
    "c" => ["00", "..", ".."],
    "d" => ["00", ".0", ".."],
    "e" => ["0.", ".0", ".."],
    "f" => ["00", "0.", ".."],
    "g" => ["00", "00", ".."],
    "h" => ["0.", "00", ".."],
    "i" => [".0", "0.", ".."],
    "j" => [".0", "00", ".."],
    "k" => ["0.", "..", "0."],
    "l" => ["0.", "0.", "0."],
    "m" => ["00", "..", "0."],
    "n" => ["00", ".0", "0."],
    "o" => ["0.", ".0", "0."],
    "p" => ["00", "0.", "0."],
    "q" => ["00", "00", "0."],
    "r" => ["0.", "00", "0."],
    "s" => [".0", "0.", "0."],
    "t" => [".0", "00", "0."],
    "u" => ["0.", "..", "00"],
    "v" => ["0.", "0.", "00"],
    "w" => [".0", "00", ".0"],
    "x" => ["00", "..", "00"],
    "y" => ["00", ".0", "00"],
    "z" => ["0.", ".0", "00"],
    " " => ["..", "..", ".."]
    }

  end

end

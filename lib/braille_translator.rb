require './lib/braille_file_converter'
require './lib/dictionary'

class BrailleTranslator<Dictionary

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
  
end

require './lib/braille_file_converter'
require 'pry'


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
   get_braille_letter_into_string(input).each_slice(3).map do |one, two, three|
    result << ["#{one}\n","#{two}\n","#{three}\n"]
  end
  binding.pry
end



 # def get_braille_letter_top(input)
 #   binding.pry
 #   @array1 = []
 #   strings = input.split
 #    strings.select do |string|
 #      @array1 << string[0..1]
 #    end
 #    @array1
 #  end
 #
 #  def get_braille_letter_middle(input)
 #    @array2 = []
 #    strings = input.split
 #     strings.select do |string|
 #       @array2 << string[2..3]
 #     end
 #     @array2
 #   end
 #
 #   def get_braille_letter_bottom(input)
 #     @array3 = []
 #     strings = input.split
 #      strings.select do |string|
 #        @array3 << string[4..6]
 #      end
 #      @array3
 #    end



def match_braille_letter
  binding.pry
  braille_dictionary = dictionary.invert
  braille_dictionary.any? ==
  binding.pry

end





#array.transpose.reverse.reverse




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

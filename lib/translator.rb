require 'pry'


class Translator


  #I need to take the message split it up into individual letters then
  #grab the matching key and return the value, join them and return that array.
  def split_message input
    letters = input.split("").map do |letter|
      letter
    end
    letters
  end


    def translate_letter(letter)
      dictionary[letter].map do |symbol|
        "#{symbol}"
      end
    end

    def translate_word(word)
      split_message(word).map do |letter|
        translate_letter(letter)
        end
      end



    def word_to_column(word)
      array = translate_word(word).transpose
        columns = array.map do |symbol|
         symbol.join(",") + "\n"
        end
        columns.join(",").gsub(",","")
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

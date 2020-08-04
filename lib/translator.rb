require './lib/file_converter'
require './lib/dictionary'


class Translator<Dictionary

  def split_message (input)
    letters = input.split("").map do |letter|
      letter
    end
    letters
  end

  def translate_letter (letter)
    dictionary[letter].map do |symbol|
      "#{symbol}"
    end
  end

  def translate_word (word)
   split_message(word).map do |letter|
    translate_letter(letter)
    end
  end

  def translator(output)
   array = translate_word(output).transpose
    columns = array.map do |symbol|
     symbol.join(",") + "\n"
      end
      columns.join(",").gsub(",","")
  end

end

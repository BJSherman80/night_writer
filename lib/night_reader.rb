require './lib/braille_file_converter'

night_reader = BrailleFileConverter.new(ARGV[0], ARGV[1])

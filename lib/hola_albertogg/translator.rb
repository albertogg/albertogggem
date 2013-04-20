module Hola
  class Translator
    def initialize(language)
      @language = language
    end

    def hi
      case @language
      when "spanish"
        puts "hola mundo"
      when "italian"
        puts "ciao mondo"
      when "french"
        puts "bonjour tout le monde"
      else
        puts "hello world"
      end
    end
  end
end

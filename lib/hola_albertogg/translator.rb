module Hola
  class Translator
    def initialize(language)
      @language = language
    end

    def hi
      case @language
      when "spanish"
        "hola mundo"
      when "italian"
        "ciao mondo"
      when "french"
        "bonjour tout le monde"
      else
        "hello world"
      end
    end
  end
end

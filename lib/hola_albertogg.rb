require 'hola_albertogg/translator'

module Hola
  class Say
    def self.hi(language = :english)
      translator = Translator.new(language)
      translator.hi
    end
  end
end

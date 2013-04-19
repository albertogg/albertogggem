require 'hola_albertogg/translator'
require 'hola_albertogg/command_line'

module Hola

  VERSION = "0.1.0" # keep it in sync with gemspec.

  class Say
    def self.hi
      cli = CommandLine.new
      cli.parse_options
    end
  end
end

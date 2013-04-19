require 'optparse'
require File.expand_path(File.dirname(__FILE__) + '/./translator')

module Hola

  class CommandLine

    def parse_options
      @options = {
        :translation => "english"
      }

      @option_parser = OptionParser.new do |opts|
        opts.on('-t', '--translate [TRANSLATION]', 'Write down the language') do |translations|
          @options[:translation] = translations
        end
        opts.on('-v', '--version', 'Display hola_albertogg version') do
          puts "hola_albertogg version #{Hola::VERSION}"
          exit
        end
        opts.on('-h', '--help', 'Display hola_albertogg help') do
          puts opts
          exit
        end
      end

      begin
        @option_parser.parse!(ARGV)
        call_translator(@options[:translation])
      rescue OptionParser::InvalidOption, OptionParser::MissingArgument
        puts $!.to_s
        puts @option_parser
        exit
      end
    end

    def call_translator(language = "english")
      translator_cli = Translator.new(language)
      translator_cli.hi
    end
  end
end

require 'minitest/autorun'
require 'hola_albertogg'

class CommandLineTest < MiniTest::Unit::TestCase
  def test_help_menu
    assert system('bin/hola_albertogg -h')
  end

  def test_version
    assert system('bin/hola_albertogg --version')
  end
end

require 'minitest/autorun'
require 'hola_albertogg'

class SayTest < MiniTest::Unit::TestCase
  def test_english_hi
    assert_equal "hello world", Hola::Say.hi
  end

  def test_spanish_hi
    assert_equal "hola mundo", Hola::Say.hi("spanish")
  end

  def test_not_equal
    refute_equal "ciao mondo", Hola::Say.hi
  end
end

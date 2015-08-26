require_relative "../greeting"
require "minitest/autorun"

class GreetingTest < Minitest::Test
  def test_simple_greeting
    assert_equal "Hello, Bob.", greet("Bob")
  end

  def test_default_greeting_with_no_name
    assert_equal "Hello, my friend.", greet
  end

  def test_default_greeting_when_name_is_nil
    assert_equal "Hello, my friend.", greet(nil)
  end

  def test_shouting
    assert_equal "HELLO JERRY!", greet("JERRY")
  end

  def test_two_names
    assert_equal "Hello, Jill and Jane.", greet("Jill", "Jane")
  end
end

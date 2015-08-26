require_relative "../greeting"
require "minitest/autorun"

class GreetingTest < Minitest::Test
  def test_simple_greeting
    greeting = greet("Bob")
    assert_equal "Hello, Bob.", greeting
  end

  def test_default_greeting_with_no_name
    greeting = greet
    assert_equal "Hello, my friend.", greeting
  end

  def test_default_greeting_when_name_is_nil
    greeting = greet(nil)
    assert_equal "Hello, my friend.", greeting
  end
end

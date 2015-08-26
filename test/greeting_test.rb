require_relative "../greeting"
require "minitest/autorun"

class GreetingTest < Minitest::Test
  def test_simple_greeting
    greeting = greet("Bob")
    assert_equal "Hello, Bob.", greeting
  end
end

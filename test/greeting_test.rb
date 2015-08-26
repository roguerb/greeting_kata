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

  def test_several_names
    assert_equal "Hello, Amy, Brian, and Charlotte.", greet("Amy", "Brian", "Charlotte")
  end

  def test_mix_of_shouted_and_non_shouted_names
    assert_equal "Hello, Amy and Charlotte. AND HELLO BRIAN!", greet("Amy", "BRIAN", "Charlotte")
  end

  def test_names_with_commas
    assert_equal "Hello, Bob, Charlie, and Dianne.", greet("Bob", "Charlie, Dianne")
  end

  def test_names_with_intentional_commas
    assert_equal "Hello, Bob and Charlie, Dianne.", greet("Bob", %{"Charlie, Dianne"})
  end

  def test_multiple_shouted_names
    assert_equal "HELLO BOB AND CHARLIE!", greet("BOB", "CHARLIE")
  end
end

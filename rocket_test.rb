require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def test_name_reader
    rockie = Rocket.new(name: "Rocky")
    expected = "Rocky"
    actual = rockie.name
    assert_equal(expected, actual)
  end

  def test_name_setter
    rockie = Rocket.new
    rockie.name = "Rocko"
    expected = "Rocko"
    actual = rockie.name
    assert_equal(expected, actual)
  end

  def test_if_dont_assign_name_have_random_name
    rockie = Rocket.new
    random_name = rockie.name
    refute_nil(random_name)
  end

  def test_colour_reader
    rockie = Rocket.new(colour: "lavender")
    expected = "lavender"
    actual = rockie.colour
    assert_equal(expected, actual)
  end

  def test_colour_setter
    rockie = Rocket.new
    rockie.colour = "black"
    expected = "black"
    actual = rockie.colour
    assert_equal expected, actual
  end

  def test_if_not_set_colour_have_random_colour
    rockie = Rocket.new
    refute_nil(rockie.colour)
  end
end

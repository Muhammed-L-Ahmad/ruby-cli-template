require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
    @sum = @calculator.add(9, 17)
    @difference = @calculator.subtract(12, 3)
    @product = @calculator.multiply(14, 7)
    @dividend = @calculator.divide(72, 12)

    def test_addition
      assert_equal 26, @sum, "addition method failed"
    end

    def test_subtraction
      assert_equal 9, @difference, "subtraction method failed"
    end

    def test_multiplication
      assert_equal 98, @product, "multiplication method failed"
    end

    def test_division
      assert_equal 6, @dividend, "division method failed"
    end
end

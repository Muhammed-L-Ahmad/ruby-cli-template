require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
    @sum = @calculator.add(9, 17)
    @difference = @calculator.subtract(12, 3)
    @product = @calculator.multiply(14, 7)
    @dividend = @calculator.divide(72, 12)

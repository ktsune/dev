require 'minitest/pride'

class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    @square_of_sum ||= (1..@number).sum**2
  end

  def sum_of_squares
    @sum_of_squares ||= (1..@number).map { |n| n**2 }.sum
  end

  def difference
    @difference ||= square_of_sum - sum_of_squares
  end

end

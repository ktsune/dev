require 'minitest/pride'

module Grains

  def self.square(n)
    raise ArgumentError.new 'This is not a square on the chessboard' \
        unless (1..64).include? n

    2**(n - 1)
  end

  def self.total
    squared_nums = (1..64).map { |n| self.square(n) }
    squared_nums.sum
  end

end

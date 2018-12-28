require 'minitest/pride'

class Series
  # series = instance variable on class Series assigned to the local
    # variable series that holds a sequence of #s to operate on
  # slices(n) = this method should cut the string at n intervals in the series

  def initialize(series)
    @series = series
  end

  def slices(n)
      if (@series.length - n) <= 0
        raise ArgumentError "The length of n is too long"
      end


      x = n.times.map { |i| @series[i, n] }
    end
  end

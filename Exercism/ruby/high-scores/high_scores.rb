require 'minitest/pride'

class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores[-1]
  end

  def highest
    @scores.sort[-1]
  end

  def report
    if latest == highest
      "Your latest score was #{latest}. That's your personal best!"
    elsif latest != highest
      diff = highest - latest
    return "Your latest score was #{latest}. That's #{diff} short of your personal best!"
    end 
  end

  #top 3
  def top
    if @scores.length < 3
      return @scores.sort.reverse
    end
    @scores.sort[-3, 3].reverse
  end

end

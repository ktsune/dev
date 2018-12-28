require 'minitest/pride'

module Year
  def self.leap?(year)
    if year % 4 == 0
      if year % 100 == 0 && year % 400 != 0
        return false
      end
      return true
    end
    return false
  end
end

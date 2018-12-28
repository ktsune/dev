require 'minitest/pride'

module Bob
  def self.uppercase?(remark)
    remark.upcase == remark && /[a-z]/i.match(remark)
  end

  def self.hey(remark)
      remark = remark.tr("\t\r\n ", "")
      if remark.empty?
        return 'Fine. Be that way!'
      elsif uppercase?(remark) && remark.end_with?('?')
        return "Calm down, I know what I'm doing!"
      elsif remark.end_with?('?')
        return 'Sure.'
      elsif uppercase?(remark)
        return 'Whoa, chill out!'
      else
        return 'Whatever.'
      end
    end
  end

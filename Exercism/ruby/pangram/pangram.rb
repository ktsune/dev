require 'minitest/pride'

module Pangram
  def self.pangram?(sentence)
    sentence.downcase!
    return false if sentence.empty?
    str = 'abcdefghijklmnopqrstuvwxyz'

    str.chars.each do |char|
      unless sentence.include?(char)
        return false
      end
    end
   return true
  end
end

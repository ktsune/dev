require 'minitest/pride'

module FlattenArray
  def self.flatten(arr)
    new_arr = []

    arr.each do |i|
      if i.kind_of?(Array)
        new_arr += flatten(i)
      elsif i != nil
        new_arr << i
      end
    end
    new_arr
  end
end

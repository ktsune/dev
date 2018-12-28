class Cat
  def initialize(type="tabby")
    @hungry = false
    @type = type
  end

  def meow
    if @hungry
      puts "meeeeeeeeeeooooooooooowwwwww"
    else
      puts "meow"
    end
  end

  def type
    @type
  end

  def hungry
    @hungry.to_s
  end

  def hungry=(value)
    @hungry = value
  end
end

orange = Cat.new("aristocat")
orange.meow

puts orange.type
puts orange.hungry + " is hungry"

orange.hungry=(true)
orange.meow

orange.hungry=(false)
orange.meow

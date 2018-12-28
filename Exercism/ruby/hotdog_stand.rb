# - sells hot dogs
  # - can get hot dog or chili dog
  # => can we include a question of which kind of dog the user would like?
    # - optional fries
  # - keeps track of how much $ stand has made
    # - print out $ made so far
  # *Bonus* - hot dog stand starts with # of hot dogs and # of fry orders
    # *Bonus* - if no more hot dogs, throw error

DogTypes = ["hotdog", "chilidog"]

class HotDogStand
  def initialize(hotdog_qty)
    @dollars = []
    @hotdog_qty = hotdog_qty
  end

  def take_money(customer_money, type)
    # TODO: verify they pay the rright amount!!!
    cost = 0
    if type == DogTypes[0]
      p "Hot dogs are $1.50"
      cost += 1.50
    elsif type == DogTypes[1]
      p "Chili dogs are $2.50"
      cost += 2.50
    else
      raise "We don't offer that type of dog. We got: " + DogTypes.to_s
    end

    if cost > customer_money
      raise "Can you give me more money please?"
    elsif cost < customer_money
      raise "Sorrry exact change only!"
    else
      p "Thanks, and come again!"
    end

    @dollars.push(cost)
    @hotdog_qty -= 1
  end

  def hotdog_qty
    if @hotdog_qty > 0
      p @hotdog_qty
    else
      raise "We're outta dogs for the day.  Sorry, folks!"
    end
  end

  def dollars_collected()
    dollars_summed = @dollars.sum
    p "Gosh darnit, Sally, we've made >$ #{ dollars_summed } dollhairs!!"
  end
end


bobs_dogs = HotDogStand.new(75)
freds_dogs = HotDogStand.new(120)
# barnies_dogs = HotDogStand.new("chilidog")

bobs_dogs.take_money(1.50, "hotdog")
bobs_dogs.take_money(1.50, "hotdog")
bobs_dogs.take_money(1.50, "hotdog")
bobs_dogs.take_money(1.50, "hotdog")
bobs_dogs.take_money(1.50, "hotdog")
freds_dogs.take_money(2.50, "chilidog")
begin
  freds_dogs.take_money(1.50, "chilidog")
rescue RuntimeError => boom
  p boom
end

bobs_dogs.hotdog_qty
freds_dogs.hotdog_qty

bobs_dogs.dollars_collected
freds_dogs.dollars_collected

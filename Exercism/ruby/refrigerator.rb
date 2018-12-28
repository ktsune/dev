# => types of food:
#    - vegetable
#    - fruit
#    - liquid
#    - meat
# => can go bad
# => has a name i.e. broccoli
#   => liquid in the freezer goes bad (frozen)

FoodTypes = [:vegetable, :fruit, :liquid, :meat]

class Food

  def initialize(name, type)
    if type in FoodTypes
      @type = type
    else
      raise "Food type is not in the expected list! Allowed food types: " + FoodTypes
    end
  end

  def bad_food=(value)
    @bad_food = value
  end

  def is_food_bad?(temp)
    if temp == :warm && type == :meat
      return true
    else if temp == :cold && type == :liquid
      return true
    else
      return false
    end
  end

end

groceries = Food.new('broccoli')
more_groceries = Food.new('carrots')

groceries.bad_food = true
more_groceries.bad_food = false

p groceries.is_food_bad?

## Refrigerator
# - can throw out all moldy/bad food
# - full of food
# - putting an item away randomly goes into the fridge or freezer

class Refrigerator

  def initialize()
    @fridge = []
    @freezer = []
  end

  #   => meat left in the fridge goes bad
  # def meat_left_in_fridge(meat)
  #   if @meat == @meat.old?
  #     @food.throw_away_food(@meat)
  #   end
  # end

  # - full of food
  # - putting an item away randomly goes into the fridge or freezer
  def add_food(food)
    if rand > .5
      @fridge << food
    else
      @freezer << food
    end
  end

  # - can throw out all moldy/bad food
   # - ==> how do i delete bad food?
  def throw_away_food
    @fridge = @fridge.select { |food| !food.is_food_bad? :warm }
    @freezer = @freezer.select { |food| !food.is_food_bad? :cold }
  end

end

smart_fridge = Refrigerator.new()
p smart_fridge.add_food(groceries)
p smart_fridge.add_food(more_groceries)

p 'thrown away food:' , smart_fridge.throw_away_food
p smart_fridge

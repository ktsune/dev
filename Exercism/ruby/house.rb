# - has people
  # - can feed people
    # - only feeds hungry people
  # - people can enter/leave house

class Person
  attr_reader :name

  def initialize(name, hungry = false)
    @name = name
    @hungry = hungry
  end

  def is_hungry?
    @hungry
  end

  def feed
    if self.is_hungry?
      @hungry = false
    else
      raise RuntimeError "this person is already fed"
    end
  end

  def work_out
    if self.is_hungry?
      raise RuntimeError "you are too hungry to work out"
    else
      @hungry = true
    end
  end

end

class House

  def initialize
    @people = []
  end

  def person_entered(person)
    @people.push(person)
  end

  def people_inside
    puts "List of people inside house: "
    puts @people.map{ |person| person.name }
  end

  def person_left(person_leaving)
    puts "Person who left house: "
    @people = @people.select{ |person|  person.name != person_leaving.name }
    p person_leaving.name 
  end

  def feed_hungry_people
    hungry_people = @people.select{ |person| person.is_hungry? }

    hungry_people.each do |person|
      person.feed
    end
  end

  def fed_people
    puts "List of fed people: "
    people_fed = @people.select{ |person| person.is_hungry? == false }
    puts people_fed.map { |person| person.name }
  end

end

fred = Person.new("Fred", true)
annie = Person.new("Annie", false)
georgie = Person.new("Georgie", true)

fanciful_house = House.new

fanciful_house.person_entered(fred)
fanciful_house.person_entered(annie)
fanciful_house.person_entered(georgie)

fanciful_house.feed_hungry_people
fanciful_house.fed_people

fanciful_house.people_inside
fanciful_house.person_left(fred)
fanciful_house.people_inside

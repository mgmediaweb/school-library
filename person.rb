require './nameable'
require './rental'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(
    age,
    name = 'Unknown',
    parent_permission: true
  )
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
      @rentals.push(rental)
      rentals.person = self
  end 

  # TEMPORAL USE, DELETE IT
  def list_rentals
    print "\nList of Rentals of #{@name}\n"
    @rentals.each_with_index { |elem, index| print "#{index + 1}.- #{elem.date}\n" }
    print "\n"
  end

  private

  def of_age?
    @age >= 18
  end
end

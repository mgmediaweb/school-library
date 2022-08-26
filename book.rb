require './rental'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(
    title, author
  )
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end

  # TEMPORAL USE, DELETE IT
  def list_rentals
    print "\nList of rents of #{@title}\n"
    @rentals.each_with_index { |elem, index| print "#{index + 1}.- #{elem.date}\n" }
    print "\n"
  end
end

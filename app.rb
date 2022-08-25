require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'

class App
  def initialize()

  end
  def run
    p 'hello'
  end
end

# maestro = Person.new(16, 'Maestro')

# gonzo = Student.new(16, room302, 'Gonzalo')

# book1 = Book.new('Lord of the Rings', 'J. R. R. Tolkien')

# rental1 = Rental.new('2022-08-24', book1, maestro)

# book1.add_rental(rental1)
# book1.add_rental(rental2)
# book1.add_rental(rental3)

# rental1.belongs_to(book1, gonzo)

# book1.list_rentals

# p rental1

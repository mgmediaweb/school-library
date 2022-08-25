require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './classroom'
require_relative './rental'
require_relative './book'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

class App

end

room302 = Classroom.new('302')
# room604 = Classroom.new('604')

maestro = Person.new(16, 'Maestro')

# gonzo = Student.new(16, room302, 'Gonzalo')
julio = Student.new(17, nil, 'Julio')

# room.add_student(gonzo)
room302.add_student(julio)

# gonzo.belongs_to(room302)
julio.belongs_to(room302)

room302.list_students
# room604.list_students

# p julio.classroom.students.count

book1 = Book.new('Lord of the Rings', 'J. R. R. Tolkien')

rental1 = Rental.new('2022-08-24', book1, maestro)
# rental2 = Rental.new('2022-08-15')
# rental3 = Rental.new('2022-08-01')

# book1.add_rental(rental1)
# book1.add_rental(rental2)
# book1.add_rental(rental3)

# rental1.belongs_to(book1, gonzo)

book1.list_rentals

print "\n==========================\n"

p rental1
# p maestro

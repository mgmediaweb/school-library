require_relative './io'
require_relative './book'
require_relative './person'
require_relative './rental'
require_relative './student'
require_relative './teacher'
require_relative './views/main_screen'

class App
  def initialize
    @screen = MainScreen.new
    @iobooks = IOclass.new('books')
    @iopeople = IOclass.new('people')
    @iorental = IOclass.new('rentals')
    @person_list = @iopeople.read
    @book_list = @iobooks.read
    @rental_list = @iorental.read
  end

  # OPTION 1
  def list_book
    @screen.list_books(@book_list)
    gets.chomp
  end

  # OPTION 2
  def list_people
    @screen.list_people(@person_list)
    gets.chomp
  end

  # OPTION 3
  def add_person
    @screen.add_person
    print '   Enter [1] for Student, or [2] for a teacher: '
    opc = gets.chomp.to_i
    @person_list << new_person(opc)
    @iopeople.write(@person_list)
    goback
  end

  # OPTION 4
  def add_book
    @screen.add_book
    print '   Enter a title: '
    title = gets.chomp.capitalize
    print '   Enter a author: '
    author = gets.chomp.capitalize

    @book_list << {
      'id' => Random.rand(1..100),
      'title' => title,
      'author' => author
    }

    @iobooks.write(@book_list)
    goback
  end

  # OPTION 5
  def rent_a_book
    @screen.rent_a_book(@book_list, @person_list)
    if @book_list.length.positive? && @person_list.length.positive?
      print '   Select a book: '
      book = gets.chomp.to_i
      print '   Select a person: '
      person = gets.chomp.to_i
      print '   Enter a date [YYYY-MM-DD]: '
      date = gets.chomp

      book_item = @book_list.select { |item| item if item['id'] == book }
      person_item = @person_list.select { |item| item if item['id'] == person }

      @rental_list << {
        'id' => Random.rand(1..100), 'book' => book_item[0], 'person' => person_item[0], 'date' => date
      }
      @iorental.write(@rental_list)
      goback
    else
      gets.chomp
    end
  end

  # OPTION 6
  def rent_history
    @screen.rent_history(@person_list, nil, true)

    if @person_list.length.positive?
      print '   Select a person ID: '
      person = gets.chomp.to_i

      person_item = @person_list.select { |item| item if item['id'] == person }
      person_selected = person_item[0]

      if person_item == []
        @screen.rent_history(nil, nil, false, nil)
      else
        rental_items = @rental_list.select { |item| item if item['person']['id'] == person_selected['id'] }
        @screen.rent_history(nil, person_item[0], true, rental_items)
      end
    end
    gets.chomp
  end

  def new_person(opc)
    print '   Enter a name: '
    name = gets.chomp.capitalize
    print '   Enter a age: '
    age = gets.chomp.to_i

    case opc
    when 1
      print '   Has parent persmision [Y/N]: '
      permision = gets.chomp.downcase
      Student.new(age, nil, name, permision == 'y')
    when 2
      print '   Enter specialization: '
      specialization = gets.chomp.capitalize
      Teacher.new(age, specialization, name)
    end

    opc_name = if opc == 1
                 'Student'
               else
                 'Teacher'
               end

    { 'id' => Random.rand(1..100), 'name' => name, 'age' => age, 'type' => opc_name }
  end

  def goback
    @screen.success
    sleep(2)
  end
end

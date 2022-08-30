require './views/template'

class MainScreen
  def initialize
    @width = 61
  end

  def initial
    header
    print "\n║                                                           ║"
    print "\n║  [1] List of all books.                                   ║"
    print "\n║  [2] List of all people.                                  ║"
    print "\n║  [3] Add a person.                                        ║"
    print "\n║  [4] Add a book.                                          ║"
    print "\n║  [5] Rent a book.                                         ║"
    print "\n║  [6] See the rental history of a person.                  ║"
    print "\n║  [7] Exit.                                                ║"
    print "#{blankline}\n╚═══════════════════════════════════════════════════════════╝\n\n"
  end

  def list_books(data)
    header
    print "\n║  List of books                                            ║"
    print "\n╠═══════════════════════════════════════════════════════════╣"
    print "\n║                                                           ║"
    loop_book(data)
    footer
  end

  def list_people(data)
    header
    print "\n║  List of people                                           ║"
    print "\n╠═══════════════════════════════════════════════════════════╣"
    print "\n║                                                           ║"
    loop_person(data)
    footer
  end

  def add_book
    header
    print "\n║  Add books                                                ║"
    print "\n╚═══════════════════════════════════════════════════════════╝\n\n"
  end

  def rent_a_book(books, people)
    header
    print "\n║  Rent a book                                              ║"
    print "\n╠═══════════════════════════════════════════════════════════╣"
    print "#{blankline}\n║                      List of books                        ║"
    loop_book(books)
    print "\n║                                                           ║"
    print "\n║                     List of Persons                       ║"
    loop_person(people)

    if books.length.positive? && people.length.positive?
      print "\n║                                                           ║"
      print "\n╚═══════════════════════════════════════════════════════════╝\n\n"
    else
      footer
    end
  end

  def rent_history(*args)
    data, person, exist = args
    header
    rent_title(person)

    if !exist
      print "\n║                 the person does not exist                 ║"
    elsif person
      if person.rentals.length.positive?
        person.rentals.each do |elem|
          line = "\n║  #{elem.date} - #{elem.book.title} (#{elem.book.author})"
          print line
          print "#{whitespace(line.length)}║"
        end
      else
        print "#{blankline}\n║               -- No rentals availables --                 ║"
      end
    else
      loop_person(data)
    end

    rent_footer(data)
  end

  def rent_title(person)
    if person
      line = "\n║  Rental history: #{person.name}"
      print line
      print "#{whitespace(line.length)}║"
    else
      print "\n║  Rental history                                           ║"
    end

    print "\n╠═══════════════════════════════════════════════════════════╣"
    blankline
  end

  def rent_footer(data)
    if data&.length&.positive?
      print "\n║                                                           ║"
      print "\n╚═══════════════════════════════════════════════════════════╝\n\n"
    else
      footer
    end
  end

  def add_person
    header
    print "\n║  Add a person                                             ║"
    print "\n╚═══════════════════════════════════════════════════════════╝\n\n"
  end

  def loop_book(data)
    if data.length.positive?
      data.each_with_index do |elem, index|
        line = "\n║  [#{index + 1}] #{elem['title']} (#{elem['author']})"
        print line
        print "#{whitespace(line.length)}║"
      end
    else
      print "\n║                -- No books availables --                  ║"
    end
  end

  def loop_person(data)
    if data.length.positive?
      data.each_with_index do |elem, index|
        line = "\n║  [#{index + 1}] #{elem.name} (#{elem.class})"
        print line
        print "#{whitespace(line.length)}║"
      end
    else
      print "\n║               -- No persons availables --                 ║"
    end
  end

  def exit
    header
    print "\n║                                                           ║"
    print "\n║                  THANKS YOU, GOOD BYE!                    ║"
    print "#{blankline}\n╚═══════════════════════════════════════════════════════════╝\n\n"
  end

  def success
    header
    print "\n║                                                           ║"
    print "\n║                   Successful Operation                    ║"
    print "#{blankline}\n╚═══════════════════════════════════════════════════════════╝\n\n"
  end
end

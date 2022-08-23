class MainScreen
  def layout
    header
    menu
    footer
  end

  def menu
    print "\n║                                                           ║"
    print "\n║  [1] List of all books.                                   ║"
    print "\n║  [2] List of all people.                                  ║"
    print "\n║  [3] Add a teacher.                                       ║"
    print "\n║  [4] Add a student.                                       ║"
    print "\n║  [5] Add a book.                                          ║"
    print "\n║  [6] Rent a book.                                         ║"
    print "\n║  [7] See the rental history of a person.                  ║"
    print "\n║  [0] Exit.                                                ║"
  end

  def add_student
    header
    print "\n║  Add a student                                            ║"
    print "\n╠═══════════════════════════════════════════════════════════╣"
    print "\n║                                                           ║"
    print "\n║  Insert the age:                                          ║"
    print "\n║  Insert the Classroom:                                    ║"
    print "\n║  Insert the Name:                                         ║"
    print "\n║                                                           ║"
    print "\n╚═══════════════════════════════════════════════════════════╝"
    print "\n\n"
  end

  def header
    system('cls')
    print "\n╔═══════════════════════════════════════════════════════════╗"
    print "\n║                                                           ║"
    print "\n║                  School Library System                    ║"
    print "\n║                                                           ║"
    print "\n╠═══════════════════════════════════════════════════════════╣"
  end

  def footer
    print "\n║                                                           ║"
    print "\n╠═══════════════════════════════════════════════════════════╣"
    print "\n║                                                           ║"
    print "\n║  [ ] Please select a option number, then press enter      ║"
    print "\n║                                                           ║"
    print "\n╚═══════════════════════════════════════════════════════════╝"
    print "\n\n"
  end
end

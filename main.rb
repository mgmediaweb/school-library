require 'json'
require_relative './book'
require_relative './views/main_screen'
require_relative './app'

def main
  screen = MainScreen.new

  loop do
    screen.initial
    print '   Select a option number, then press [ENTER]: '
    opc = gets.chomp.to_i

    break unless [1, 2, 3, 4, 5, 6].include?(opc)

    selector(opc)
  end
  screen.exit
end

def selector(opc)
  app = App.new

  case opc
  when 1
    app.list_book
  when 2
    app.list_people
  when 3
    app.add_person
  when 4
    app.add_book
  when 5
    app.rent_a_book
  when 6
    app.rent_history
  end
end

main

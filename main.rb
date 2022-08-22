require_relative './pages/person'
require_relative './pages/student'
require_relative './views/main_screen'

class Main
  attr_reader :exit

  def initialize
    @exit = false
    @main_scr = MainScreen.new
    start
  end

  def start
    @main_scr.layout
    mainOptions
  end

  def mainOptions
    opt = gets.chomp.to_i.abs
  
    case opt
      when 1 then
        
      when 2 then
        
      when 4 then
        @main_scr.addStudent
        
      when 0
        puts 'are u sure???'
        @exit = true
    end
  end
end

Main.new

# alumni = Person.new(22)

# p alumni.can_use_services?

# alumni.name = 'Gonzalo'

# p alumni.name

# stud = Student.new(18, 5)

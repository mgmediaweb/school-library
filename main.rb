require_relative './student'
require_relative './teacher'
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
    main_options
  end

  def main_options
    opt = gets.chomp.to_i.abs

    case opt
    when 1
      puts 'option 1'
    when 2
      puts 'option 2'
    when 4
      @main_scr.add_student

    when 0
      puts 'are u sure???'
      @exit = true
    end
  end
end

Main.new

print "\n"

stud = Student.new(
  17,
  '601',
  'Julio'
)

teach = Teacher.new(
  44,
  'Math',
  'Franco'
)

p stud.name
p stud.age
p stud.classroom
p stud.can_use_services?

print "----------------\n"

p teach.name
p teach.age
p teach.specialization
p teach.can_use_services?

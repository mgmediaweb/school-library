require './student'

class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end

  # TEMPORAL USE, DELETE IT
  def list_students
    print "\nAlumnos del salon #{@label}\n"
    @students.each_with_index { |elem, index| print "#{index + 1}.- #{elem.name}\n" }
    print "\n"
  end
end

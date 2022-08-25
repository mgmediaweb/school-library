require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

person = Person.new(354, 'Frankestein')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name
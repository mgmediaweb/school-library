require_relative '../student'

describe Student do
  new_student = Student.new(
    17,
    '602',
    'John Doe'
  )

  describe 'View Student' do
    it 'show name of student' do
      expect(new_student.name).to eql 'John Doe'
    end
  end
end

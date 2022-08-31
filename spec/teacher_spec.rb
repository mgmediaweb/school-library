require_relative '../teacher'

describe Teacher do
  new_teacher = Teacher.new(
    46,
    'Math',
    'Mr. Smith'
  )

  describe 'View Teacher' do
    it 'show name of teacher' do
      expect(new_teacher.name).to eql 'Mr. Smith'
    end
  end
end

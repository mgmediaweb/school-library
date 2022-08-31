require_relative '../classroom'

describe Classroom do
  new_classroom = Classroom.new('302')

  describe 'View Classroom' do
    it 'show label of the classroom' do
      expect(new_classroom.label).to eql '302'
    end
  end
end

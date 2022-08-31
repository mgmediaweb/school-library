require_relative '../person'

describe Person do
  new_person = Person.new(46)

  describe 'View Person' do
    it 'show age of person' do
      expect(new_person.age).to be 46
    end
  end
end

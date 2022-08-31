require_relative '../rental'

describe Rental do
  new_rental = Rental.new(
    '2022-08-31',
    'Da vinci code',
    'John Doe'
  )

  describe 'View Rental' do
    it 'show date of the rental' do
      expect(new_rental.date).to eql '2022-08-31'
    end
  end
end

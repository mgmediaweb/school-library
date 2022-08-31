require_relative '../book'

describe Book do
  new_book = Book.new(
    'Da vinci code',
    'Dan Brown'
  )

  describe 'View Book' do
    it 'Show title of book' do
      expect(new_book.title).to eql 'Da vinci code'
    end
  end
end

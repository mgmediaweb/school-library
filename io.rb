class IOclass
  def initialize(arg)
    @type = arg
    # @file =  'books.json'

    @file = case @type
            when 'books'
              'books.json'
            when 'people'
              'people.json'
            when 'rentals'
              'rentals.json'
            else
              'default.json'
            end
  end

  def read
    file = File.open(@file)
    file_data = file.read
    arr_books = []

    p "--> #{file_data}"

    if file_data != ''
      elems = JSON.parse(file_data)

      elems.each do |item|
        arr_books << {
          'title' => item['title'],
          'author' => item['author']
        }
      end
    end

    close(file)
    arr_books
  end

  def write(_elems)
    arr_books = []

    # elems.each do |item|
    #   arr_books << {
    #     'title' => item['title'],
    #     'author' => item['author']
    #   }
    # end

    # file = File.open(@file, 'w')
    # File.write(@file, JSON.pretty_generate(arr_books))
    # close(file)
  end

  def close(file)
    file.close
  end
end

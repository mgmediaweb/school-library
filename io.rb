class IOclass
  def initialize(arg)
    @type = arg

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

    if file_data != ''
      elems = JSON.parse(file_data)
      arr_books = make_array(elems)
    end

    close(file)
    arr_books
  end

  def write(elems)
    file = File.open(@file, 'w')
    File.write(@file, JSON.pretty_generate(make_array(elems)))
    close(file)
  end

  def make_array(elems)
    arr_items = []

    elems.each do |item|
      case @type
      when 'books'
        arr_items << {
          'id' => item['id'], 'title' => item['title'], 'author' => item['author']
        }
      when 'people'
        arr_items << {
          'id' => item['id'], 'name' => item['name'], 'age' => item['age'], 'type' => item['type']
        }
      when 'rentals'
        arr_items << {
          'id' => item['id'], 'book' => item['book'], 'person' => item['person'], 'date' => item['date']
        }
      end
    end

    arr_items
  end

  def close(file)
    file.close
  end
end

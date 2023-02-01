require './book'
require './label'

class Book_activities
  def initialize
    @books = []
    @labels = []
  end

  def list_all_books
    load_books = Data.new('books.json')
    books = load_books.load
    if books.empty?
      puts 'NO BOOK RECORDS FOUND!'
    else 
      books.each_with_index do |book, index|
        puts "(#{index}) Title: #{book['title']}, Publisher: #{book['publisher']}, Date published: #{book['publish_date']}"
  end

  def list_all_labels
    load_labels = Data.new('labels.json')
    labels = load_labels.load
    if labels.empty?
      puts 'NO LABEL RECORDS FOUND!'
    else
      labels.each_with_index do |label, index|
        puts "(#{index}) Title #{label['title']}, Color #{label['color']}"
    end
  end

  def create_label
    print 'Add label title: '
    title = gets.chomp
    print 'Add label color: '
    color = gets.chomp
    Label.new(title: title, color: color)
  end

  def add_book
    print 'Enter book title: '
    title = gets.chomp
    print 'Enter book publisher: '
    publisher = gets.chomp
    print 'Enter date published: '
    publish_date = gets.chomp
    print 'Enter cover state (good/bad): '
    cover_state = gets.chomp
    book = Book.new(title: title, cover_state: cover_state, publisher: publisher, publish_date: publish_date)
    label = handle_label
    label.add_item(book)
    @labels << label unless @labels.include?(label)
    store_labels
    @books << book
    store_books
    puts 'Book added successfully'
  end

  def handle_label
    if @labels.any?
    print 'Enter (1) to select label or (2) to craete a new label: '
    user_option = gets.chomp.to_i 
    case user_option
    when '1'
      puts 'select a label from list by index: '
    when 
      
    else
      
    end
  end
end
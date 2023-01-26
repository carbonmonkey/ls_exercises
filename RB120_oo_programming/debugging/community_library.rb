class Library
  attr_accessor :address, :phone, :books

  def initialize(address, phone)
    @address = address
    @phone = phone
    @books = [] 
  end

  def check_in(book)
    books.push(book)
  end

  def display_book_data
    books.each do |book|
      book.display_data
    end
  end
end

class Book
  attr_accessor :title, :author, :isbn

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def display_data
    puts '-----------------'
    puts "Title: #{title}"
    puts "Author: #{author}"
    puts "ISBN #{isbn}"
    puts "-----------------"
  end
end

community_library = Library.new('123 Main St.', '555-232-5652')
learn_to_program = Book.new('Learn to Program', 'Chris Pine', '978-193')
little_women = Book.new('Little Women', 'Louisa May Alcott', '978-142')

community_library.check_in(learn_to_program)
community_library.check_in(little_women)

community_library.display_book_data


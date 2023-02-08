# frozen_string_literal: true

# Part 1

def sum(arr)
  
    total = 0
    arr.each do |num|
        total += num
    end
    total
end


def max_2_sum(arr)
  sum(arr.sort.last(2))
end

def sum_to_n?(arr, number)
  arr.product(arr).any? {|couple| sum(couple) == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  s =~ /^[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4?(string)
  if bin = /^[1|0]+/.match(string)
    bin.to_string.to_i(2) % 4 == 0
  else
    false
  end
end


# Part 3

# Object representing a book
class BookInStock
  
  attr_accessor :isbn, :price
  
def initialize(isbn, price) 

  if isbn.empty?
    raise(ArgumentError, "ISBN number is the empty string.")
  elsif price <= 0
    raise(ArgumentError, "Price must be positive.")
  end
  @isbn = isbn
  @price = Float(price)
end

def price_as_string
  return sprintf "$"+"%.2f", price
end
end
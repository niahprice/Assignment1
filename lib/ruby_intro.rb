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

def sum_to_n?(array, n)
  array.combination(2).any? { |a, b| a + b == n }
end


# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty? || !s.match?(/\A[a-z]/i)

  !['a', 'e', 'i', 'o', 'u'].include?(s[0].downcase)
end


def binary_multiple_of_4?(s)
  # First, check if s is a valid binary string
  return false unless s.match?(/^[01]+$/)

  # Then, convert the binary string to an integer and check if it's a multiple of 4
  s.to_i(2) % 4 == 0
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
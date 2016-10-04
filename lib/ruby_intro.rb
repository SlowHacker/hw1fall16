# Code added by Qiao Liang on 4-Sep-2016

# Part 1

def sum(arr)
  if arr.length == 0
    return 0
  else
    return arr.inject { |sum, n| sum + n }
  end
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.max(2).inject { |sum, n| sum + n }
  end
end

def sum_to_n?(arr, n)
  if arr.length == 0
    return false
  else
    arr.combination(2).to_a.each do |elem|
      if elem.inject { |sum, x| sum + x } == n
        return true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # I tried both single quotes and double quotes, and it turns out 
  # that only double quotes allow string interpolation.
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  return !!(/\A[a-z&&[^aeiou]]/i =~ s)
end

def binary_multiple_of_4?(s)
  # A string can be converted into binary iff it is not empty and 
  # has no character other than 0 or 1
  if s != '' and s !~ /[^01]/
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  # Constructor
  def initialize(isbn, price)
    validateIsbn(isbn)
    validatePrice(price)
    
    @isbn = isbn
    @price = price
  end
  
  # Getters
  def isbn
    @isbn
  end
  def price
    @price
  end
 
  # Setters
  def isbn=(new_isbn)
    validateIsbn(new_isbn)
    @isbn = new_isbn
  end
  def price=(new_price)
    validatePrice(new_price)
    @price = new_price
  end
  
  # Validators
  def validateIsbn(isbn)
    if isbn.empty?
      raise ArgumentError
    end
  end
  def validatePrice(price)
    if price <= 0
      raise ArgumentError
    end
  end
  
  # Custom method  
  def price_as_string
    return '$%.2f' % @price
  end
end
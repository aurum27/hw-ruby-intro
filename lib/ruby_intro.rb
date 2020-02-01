# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  @total = 0
  arr.each do |x|
    @total += x
  end
  return @total
end

def max_2_sum arr
  sum(arr.max(2)) #used previous method I made, as well as array documentation
end

def sum_to_n? arr, n
  #idea, subtract n from all terms, then see if the resulting array contains
  # any of the original values of arr.
  if arr.length() <= 1 
    return false
  end
  
  arr.each do |x|
    if arr.index(n-x) == arr.index(x) #check to see if index is the same, or
      return false                    #if the number is half of n
    end
    if arr.index(n-x) != nil
      return true
    end 
  end
  
  return false
end

# Part 2

def hello(name)
  @hello_string =  "Hello, #{name}" #needs a definition, cant just use puts.
end

def starts_with_consonant? s
  @consonants = "bcdfghjklmnpqrstvwxyz"
  
  if s.length < 1
    return false
  end
  if @consonants.index(s[0]) != nil or @consonants.upcase.index(s[0]) != nil
    return true
  end
end

def binary_multiple_of_4? s
  @num = s.to_i(2)
  
  if @num%4==0
    return true
  end
  
end

# Part 3

class BookInStock
  def initialize(i="0", p=1.0)
    @isbn = i
    @price = p
    
    raise ArgumentError, "Invalid isbn" unless i.length > 0
    raise ArgumentError, "Price is 0" unless p > 0
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn= i
    @isbn = i
  end
  def price= p
    @price = p
  end
  
  def price_as_string
    @out = "$%0.2f" % @price
    return @out
  end
end

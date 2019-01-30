# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if(arr.size == 0)
    return 0
  else
  return arr.inject{ |sum,x| sum + x }
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if(arr.size == 0)
    return 0
    elsif(arr.size == 1)
    return arr[0]
  else
    return arr.max(2).reduce(:+)
    
  end
      
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
 
    hash = Hash.new(0)
    
    arr.each do |x|
      if (hash.key? x)
        return true
      else
        
      	hash[n-x] = x
      end
      
    end
     
    return false
   
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  
    !!(s[0] =~ /[a-z&&[^aeiou]]+/i)
  
    
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  !!(s =~ /^([01]*00|0)$/)
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn, :price
  def initialize(isbn,price)
    @isbn = isbn
    raise ArgumentError if isbn == ""
    @price = price
    raise ArgumentError if price <= 0
  end
  def price_as_string()
      return "$%.2f" % price 
  end
end
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  x = 0
  if arr.length==0
    return x
  end
  arr.each{ |i| x+=i}
  return x
end

def max_2_sum arr
  # YOUR CODE HERE
  x = 0
  if arr.length ==0
    return x
  end
  if arr.length == 1
    return arr[0]
  end
  b = arr.sort
  return b[arr.length-1]+b[arr.length-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  start = 0
  end_1 = arr.length-1
  b = arr.sort
  while start<end_1
    if b[start]+b[end_1] == n
      return true
    end
    if b[start]+b[end_1] <n
      start = start+1
      next
    end
    if b[start]+b[end_1]>n
    end_1 = end_1-1
      next
    end
    
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  x = "Hello, "+name
  return x
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0
    return false
  end
  if /^[^aeiou\W]/i.match(s) != nil
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s.length == 0
    return false
  end
  
  
  if s.count('01') != s.length
    return false
  end
  x = s.to_i(2)
  if(x%4 == 0)
    return true
  end
  return false

end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn,price)
    raise ArgumentError if isbn.length == 0
    raise ArgumentError if price <=0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  def isbn=(isbn) #setter method
    @isbn = isbn
  end
  
  def price=(price) #setter method
    @price = price
  end

  def price_as_string
    a = '%.2f' % price
    return "$"+a.to_s
  end
end

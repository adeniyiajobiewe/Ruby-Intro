# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  
  result = 0
  if arr.length > 0 then
    arr.each do |item|
      result += item
    end
  else
    result = 0
  end
  return result
end



def max_2_sum(arr)
    
  if arr.length > 1
    largestNumber = arr.max()
    arr[arr.index(largestNumber)] = arr.min()
    secondLargestNumber = arr.max()
    sum = largestNumber + secondLargestNumber
  elsif arr.length == 1
    sum = arr[0]
  else
    sum = 0
  end
  return sum
end



def sum_to_n?(array, n)
    hashMap = {}
    array.each_with_index do |integer, index|
        if hashMap.has_key?(n - integer) then
            return true
        else
            hashMap[integer] = index
        end
    
    end
    return false
end



# Part 2

def hello(name)

  return ("Hello, " + name)
  
end

def starts_with_consonant?(s)
    vowels = ['A', 'E', 'I', 'O', 'U']
    consonants = ('A'..'Z').to_a - vowels
    if consonants.include?(s.chr.upcase) then
        return true
    else
        return false
    end
end

def binary_multiple_of_4?(s)

    count_arr = Array.new
    
    letters = ('a'..'z').to_a
    nonbinary = ('!'..'?').to_a - ['0', '1'] + [' ']
    if s.length == 0
        return false
    end
    for i in s.split("")
      
        if nonbinary.include?(i) or letters.include?(i.downcase) then
            count_arr << i
        end
    end
    if count_arr.length == 0 and s.to_i % 4 == 0 then
        return true
    else
        return false
    end
end

# Part 3

class BookInStock
    
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn=isbn
  end
  
  def price=(price)
    @price=price
  end
  
  
  def initialize(isbn, price)
    if isbn.length >= 1
      @isbn = isbn
    else
      raise ArgumentError, 'ISBN number should not be an empty string'
    end
    if price > 0
      @price = price
    else
      raise ArgumentError, "Price can not be 0 or negative"
    end
  end
  
  def price_as_string
    return "$" + ('%.2f' % @price).to_s
    
  end
  
  
end
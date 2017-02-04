# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  r = 0
  arr.each{|a| r += a}
  return r
end

def max_2_sum arr
  r = 0
  s = -99
  l = -99
  if arr.length != 0
    if arr.length == 1
      s = 0
    end
    arr.each do |a|
      if a.to_s.to_i > l then
        l = a
      elsif a.to_s.to_i <= l && a.to_s.to_i > s then
        s = a
      end
    end
    r = s + l
  end
  return r
end

def sum_to_n? arr, n
  x = arr.permutation(2).to_a
  x.each do |a|
    r = a[0] + a[1]
    if r == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  r = "Hello, "
  r << name
  return r
end

def starts_with_consonant? s
  r = s[0]
  if r == nil
    return false
  end
  if r.match(/[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/) != nil
   return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  if s.match(/[^0-1]/) != nil
    return false
  end
  b = s.to_i(2)
  if b % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(is, pr)
    raise ArgumentError if is == ''
    @isbn = is
    raise ArgumentError if pr <= 0
    @price = pr
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(is)
    @isbn = is
  end
  def price=(pr)
    @price = pr
  end
  def price_as_string
    r = "$"
    px = "%.2f" % @price.round(2)
    r << px
    return r
  end
end

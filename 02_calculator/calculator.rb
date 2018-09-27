#write your code here
def add a, b
  return a + b
end

def subtract a, b
  return a - b
end

def sum arr
  total = 0
  arr.each do |num|
    total = total + num
  end
  return total
end

def multiply *values
  total = 1
  values.each do |val|
    total = total * val
  end
  return total
end

def power a, b
  return  a ** b
end

def factorial n
  total = 1
  if n == 0
    return total
  elsif n > 0
    while n >= 1
      total = total * n
      n = n - 1
    end
  end
  return total
end

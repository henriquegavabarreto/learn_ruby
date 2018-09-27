#write your code here
def ftoc temp
  if temp == 32
    return 0
  elsif temp > 32
    return (temp - 32) * 5 / 9
  end
end

def ctof temp
  if temp == 0
    return 32
  elsif temp > 0
    return temp * 1.8 + 32
  end
end

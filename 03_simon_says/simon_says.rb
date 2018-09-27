#write your code here
def echo str
  return str
end

def shout str
  return str.upcase
end

def repeat str, n = 2
  phrase = ""
  n.times do
    phrase = phrase + str + " "
  end
  phrase.strip
end

def start_of_word str, num
  str[0, num]
end

def first_word str
  str.split(" ")[0]
end

def titleize str
  words = str.split(" ")
  title = ""
  words.each_with_index do |word, index|
    if index == 0
      title = title + word.capitalize + " "
    else
      if word == "the" || word == "over" || word == "and"
        title = title + word + " "
      else
        title = title + word.capitalize + " "
      end
    end
  end
  return title.strip
end

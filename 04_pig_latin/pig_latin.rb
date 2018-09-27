#write your code here
# def translate words
#   vowels = ['a','e','i','o','u']
#   translation = ""
#   words = words.split(" ")
#   words.each do |word|
#     if vowels.include?(word[0])
#       word = word + "ay"
#     else
#       if vowels.include?(word[1])
#         word = word[1,word.length-1] + word[0] + "ay"
#       elsif vowels.exclude?(word[2])
#         word = word[2,word.length-1] + word[0,2] + "ay"
#       end
#     end
#     translation += word + " "
#   end
#   return translation.strip
# end

def translate word
  words = word.split(" ")
  new_phrase = ""
  words.each do |word|
    if word =~ /\A[^aeiou]/
      if word =~ /.*[q][u]/
        word = word[word.index('u') + 1,word.length-1] + word[0,word.index('u')+1] + "ay"
      elsif word =~ /\A[^aeiou]{3}/
        word = word[3,word.length-1] + word[0,3] + "ay"
      elsif word =~ /\A[^aeiou]{2}/
        word = word[2,word.length-1] + word[0,2] + "ay"
      else
        word = word[1,word.length-1] + word[0] + "ay"
      end
    else
      word = word + "ay"
    end
    new_phrase = new_phrase + word + " "
  end
  return new_phrase.strip
end

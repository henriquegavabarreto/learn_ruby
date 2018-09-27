class Book
  attr_accessor :title

  def title
    lil_word = ["for", "and", "nor", "but", "or", "yet", "so", "in", "the", "of", "a", "an"]
    new_title = ""
    words = @title.split(" ")
      words.each_with_index do |word, index|
        is_lil_word = false
        lil_word.each do |con|
          if word == con && index != 0
            is_lil_word = true
            break
          else
            is_lil_word = false
          end
        end
        if is_lil_word
          new_title += word + " "
        else
          new_title += word.capitalize + " "
        end
      end
      new_title = new_title.strip
  end
end

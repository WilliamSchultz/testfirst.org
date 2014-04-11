class Book

  attr_accessor :title
  
  def title=(new_title)
    @@little_words = %w(the and an a or but for of over in)
    @title = new_title.split.map.with_index { |i, index| @@little_words.include?(i) && index > 0 ? i : i.capitalize }.join(" ")
  end
  
end
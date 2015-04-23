class String
  #method to take a list of words and check for valid anagrams
  define_method(:anagramer) do |word_list|
      words_to_compare = word_list.split(" ")
      results = []

      words_to_compare.each do |word|
        if self.compare(word)
          results.push("#{word}: yes")
        else
          results.push("#{word}: no")
        end
      end

      results.join("; ")
  end

  #comparison method
  define_method(:compare) do |compare_to|
    source_word = self

    if source_word.length == compare_to.length

      source_letters = source_word.downcase().split("").sort!()
      compare_letters = compare_to.downcase().split("").sort!()

      if source_letters == compare_letters
        is_valid = true
      else
        is_valid = false
      end

    else
      is_valid = false
    end

    is_valid
  end
end

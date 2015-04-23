class String
  define_method(:anagramer) do |compare_to|

    source_word = self


    if source_word.length == compare_to.length

      source_letters = source_word.split("").sort!()
      compare_letters = compare_to.split("").sort!()

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

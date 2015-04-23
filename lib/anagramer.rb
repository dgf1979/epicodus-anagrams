class String
  define_method(:anagramer) do |compare_to|

    source_word = self


    if source_word.length == compare_to.length
      source_hash = Hash.new()
      compare_hash = Hash.new()
      source_letters = source_word.split("").sort!()
      compare_letters = compare_to.split("").sort!()

      #source letters
      source_letters.each do |letter|
        if source_hash.include?(letter)
          letter_count = source_hash.fetch(letter)
          letter_count += 1
          source_hash.store(letter, letter_count)
        else
          source_hash.store(letter, 1)
        end
      end

      #compare letters
      compare_letters.each do |letter|
        if compare_hash.include?(letter)
          letter_count = compare_hash.fetch(letter)
          letter_count += 1
          compare_hash.store(letter, letter_count)
        else
          compare_hash.store(letter, 1)
        end
      end

      #compare hashes
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

def substrings(substring, dictionnary)
  substring.downcase!
  words_count = Hash.new(0)
  dictionnary.each { |word| words_count[word] += substring.scan(word).count if substring.include? word }
  words_count
end
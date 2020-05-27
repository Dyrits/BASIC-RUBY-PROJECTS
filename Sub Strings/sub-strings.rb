def substrings(substring, dictionnary)
  substring.downcase!
  words_count = Hash.new(0)
  dictionnary.each do |word|
    words_count[word] += substring.scan(word).count if substring.include? word
  end
  words_count
end
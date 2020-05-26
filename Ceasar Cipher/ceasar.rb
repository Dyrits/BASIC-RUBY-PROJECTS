def caesar_cipher(string, shift)
  shift < 0 ? shift % 26 + 26 : shift %= 26
  string.split("").map {|letter|
    code_char = (letter.ord + shift - 97) % 26 + 97 if letter.match?(/[a-z]/)
    code_char = (letter.ord + shift - 65) % 26 + 65 if letter.match?(/[A-Z]/)
    code_char = letter.ord if !code_char
    code_char.chr
  }.join
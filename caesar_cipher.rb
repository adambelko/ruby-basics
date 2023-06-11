def caesar_cipher(string, shift)
  lower_case_alphabet = ('a'..'z').to_a
  upper_case_alphabet = ('A'..'Z').to_a
  cipher = ''

  string.split('').each do |char|
    if lower_case_alphabet.include? char
      index = (lower_case_alphabet.find_index(char) + shift) % 26
      cipher << lower_case_alphabet[index]
    elsif upper_case_alphabet.include? char
      index = (upper_case_alphabet.find_index(char) + shift) % 26
      cipher << upper_case_alphabet[index]
    else
      cipher << char
    end
  end
  puts cipher
end

caesar_cipher('What a string!', 5)

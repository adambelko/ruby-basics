dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  result = {}
  words = string.downcase.split

  dictionary.each do |substring|
    words.each do |word|
      if word.include?(substring)
        result.include?(substring) ? result[substring] += 1 : result[substring] = 1
      end
    end
  end
  result
end

substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

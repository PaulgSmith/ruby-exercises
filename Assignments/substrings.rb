# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings
# (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

def substrings(string, dictionary)
  words = string.split
  result = Hash.new(0)
  words.each do |word|
    (0...word.length).each do |first|
      (first...word.length).each do |last|
        if dictionary.include?(word[first..last].downcase)
          result[word[first..last]] += 1
        end
      end
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
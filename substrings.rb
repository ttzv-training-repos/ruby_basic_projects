dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  substrings = Hash.new(0)
  string = string.downcase.split
  string.each do |s| 
    red = dictionary.reduce(Hash.new(0)) do |acc, next_word|
      if s.downcase.include?(next_word)
        acc[next_word] += 1
      end
      acc
    end
    substrings.merge!(red) {|key,v1,v2| v1 + v2}
  end
  substrings
end

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)

substrings("How is your Ruby programming going so far?", dictionary)




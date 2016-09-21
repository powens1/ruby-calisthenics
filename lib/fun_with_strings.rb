module FunWithStrings
  def palindrome?
	  s = self.gsub(/[^a-zA-Z]+/, "")
	  s.downcase!

	  if s == s.reverse
	  	return true
	  else
	  	return false
	  end
  end

  
  def count_words
	    word_count = Hash.new(0)
	    mod_s = self.gsub(/[^a-z ]/i, '')
	    mod_s.downcase!
	    mod_s.split.each do |x|
		  	word_count[x] += 1
	    end
	    return word_count
  end
    
  def anagram_groups
    if self.empty?
    	return Array.new
    end
    string_array = self.split
    group = Hash.new
    string_array.each do |word|
    	word_sorted = word.downcase.chars.sort
    	if group.has_key?(word_sorted)
    		group.fetch(word_sorted).insert(0,word)
    	else
    		group[word_sorted] = [word]
    	end
    end
    return group.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

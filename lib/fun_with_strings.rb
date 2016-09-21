module FunWithStrings
  def palindrome?
      #set the string to equal itself excluding non alphabet characters
	  s = self.gsub(/[^a-zA-Z]+/, "")
	  #change all characters in the string to lowercase
	  s.downcase!
	  
	  #check to see if the string is equal to itself reversed
	  if s == s.reverse
	    #if this is true then the string is a palindrome
	  	return true
	  #for all other cases
	  else
	    #the string is not a palindrome
	  	return false
	  #end of check for string equal to reversed string
	  end
  end

  
  def count_words
        #create a new hash and set the default value to zero
	    word_count = Hash.new(0)
	    #set the string equal to itself excluding any non alphabet characters
	    mod_s = self.gsub(/[^a-z ]/i, '')
	    #change all characters in the string to lowercase
	    mod_s.downcase!
	    #break the string up into an array of the words that make up that string, then iterator through each element of this array
	    mod_s.split.each do |x|
	        #add one to the value of the hash key everytime that hash key appears
		  	word_count[x] += 1
		#end of iterations through array of words
	    end
	    #return alll the the hash keys and values
	    return word_count
  end
    
  def anagram_groups
    #check if no input is given
    if self.empty?
        #return an new array with no values
    	return Array.new
    end
    #turn the string into an array of all the words inside of it
    string_array = self.split
    #create a new hash
    group = Hash.new
    #iterate through each word of the string array
    string_array.each do |word|
        #sort the letters of the word by making them all lowercase, then break the string into an array of characters, then sort them from first to last
    	word_sorted = word.downcase.chars.sort
    	#check if the group hash has a key that is the sorted word
    	if group.has_key?(word_sorted)
    	    #return the value of the key that is the sorted word, insert the value of the original word into position 0 
    		group.fetch(word_sorted).insert(0,word)
    	#for all other cases
    	else
    	    #add a new word to this group array of sorted words
    		group[word_sorted] = [word]
    	#end of check for group hash that has a key that is the sorted word
    	end
    #end of iteration through each word in the string array
    end
    #return the value of all the hashes
    return group.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

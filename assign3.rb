#!/usr/bin/ruby -w

# Anthony Giacalone
# CECS 424
# September 18, 2011
# Assignment 3
# Hash Table


# Read the file and save it to an array, deleting undesired characters, changing to
#   lowercase, and seperating the words into individual entries
words = File.read("f11as4.txt").delete("-1234567890_,./\\;\'<>=()\"").downcase.split

# Read the array into a hash table and generate the word count as the value
hash = Hash.new(0)
words.each do |v|
	hash[v] += 1
end

# Display the results of the hash table
#   note: sorting the hash will convert the value to a string, hence
#   a copy is needed to preserve the original values as integers and
#   allow it to be searched for the > 3 values in the select operation
puts "\nHere is the sorted hash table (sorted by frequency):\n\n"
sortedhash = hash

sortedhash.sort {|a,b| a[1] <=> b[1]}.each{|sortedhash| print sortedhash[0], " "}

# If the next instruction is enabled, it will display the same as above, but
# 	with the format; 'key => value' instead of just 'key'

#sortedhash.sort {|a,b| a[1] <=> b[1]}.each{|sortedhash| print sortedhash[0], 
#	" => ", sortedhash[1], ", "}

puts "\n\nHere are the words that occur more than three times:\n\n"
hash.select {|k,v| v > 3}.each{|hash| print hash[0], " "}

puts "\n\n"


##########################################
### Here is the output for the program ###
##########################################
#
# Here is the sorted hash table (sorted by frequency):
#
# as result with less fruitcake contrast builtin mixes 
# way facility code for test write use can part comparing 
# cecs other example provides do you greater same operators 
# an which etc based testing four depending whether number 
# function always equal and using assignment comparison 
# comparable returns mixin namespace module or than class 
# vowels implement not objects include has method array sort 
# attribute on show object compare usual is that ruby string 
# to in this your of a the 
#
# Here are the words that occur more than three times:
#
# a the of 
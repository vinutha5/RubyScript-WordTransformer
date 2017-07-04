require 'text'

def validate(word)
	while word.empty?
		print "Empty is Invalid input. Please enter the valid word - " 
		word = gets.chomp
	end

	while word.size > 5
		print "Accepts max of 5 letter word. Please enter the valid word - " 
		word = gets.chomp
	end

	while word =~ /^-?[0-9]+$/
		print "Accepts only string. Please enter the valid word - " 
		word = gets.chomp
	end

	return word
end


def validate_array(arry, start_word)
	while arry.length < 2
	print "Please enter more than 2 elements - " 
	array = gets.chomp
	arry = array.split(",")
	end

	while arry.length > 600
		print "Please enter less than 600 elements - " 
		array = gets.chomp
		arry = array.split(",")
	end

	  length = []
	  arry.each{ |a| length << a.length}

	while length.uniq.size > 1
		print "ERROR - Invalid array element. Length of all element should be same." 
		print "Please enter the valid array elements (with comma seperated) - "
		array = gets.chomp
		arry = array.split(",")
		length = []
	  	arry.each{ |a| length << a.length}
	end

	while arry.join(",") =~ /^-?[a-z]+$/
		print "Array elements should be lowercase words. Please enter the valid array elements (with comma seperated) - "
		array = gets.chomp
		arry = array.split(",")
	end

	return arry
end

#Get start word and validate
print "Please enter the start word - " 
start_word = gets.chomp
start_word = validate(start_word) 

#Get end word and validate
print "Please enter the end word - " 
end_word = gets.chomp
end_word = validate(end_word)

while start_word.size != end_word.size
	print "Invalid Input - Size of the start word and end word should be Same. Please enter end word - " 
	end_word = gets.chomp
end

#Get array elements and validate
print "Please enter the array elements (with comma seperated) - " 
array = gets.chomp
arry = validate_array(array.split(","), start_word)

def one_letter_apart? string1, string2
 	Text::Levenshtein.distance(string1, string2) == 1 ? true : false
end

#Genrates output
@count = 2 # start and end word word included in count

result = one_letter_apart? start_word, arry[0]

if result == true
	arry.each_with_index do | elm, i|
		result = one_letter_apart? arry[i], arry[i+1]
		@count = @count+1;
		break if result != true
	end
	print @count
else
	print "Can not have Shortest transformation."
end







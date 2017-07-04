# RubyScript-WordTransformer

Install text Gem - "gem install text"
include require 'text'
This gem helps to get the length of word transforms:
    Text::Levenshtein.distance('test', 'tent')
    # => 1
    Text::Levenshtein.distance('test', 'testing')
    # => 3
    
Run the script using below cmd :
    ruby Assignment.rb

Execution of script prompts for the inputs :
    Please enter the start word - hit
    Please enter the end word - cog
    Please enter the array elements (with comma seperated) - hot,dot,dog,lot,log
  
Outputs the integer :
    5

Validation are done for all inputs:
    //For integer input
    Accepts only string. Please enter the valid word -
    //Word size limits
    Accepts max of 5 letter word. Please enter the valid word -
    //Diff length of array elements
    ERROR - Invalid array element. Length of all element should be same.Please enter the valid array elements (with comma seperated)-
    etc..etc..
  

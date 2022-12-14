def get_most_common_letter(text)
   
    counter = Hash.new(0)
    [text.chars]
    text.chars.each do |char|
    if char =~ /[a-zA-Z]/ 
      then counter[char] += 1
    end
  end
    counter.to_a.sort_by { |k, v| v }#[-2][0]
  end
  
  # Intended output:
  # 
  get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"

=begin


############### initial method 
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[0][0]
end

 Intended output:

> get_most_common_letter("the roof, the roof, the roof is on fire!")
=> "o"

############### discovery debugging 

def get_most_common_letter(text)
p  counter = Hash.new(0)                   # check empty hash is created
p text.chars                               # determine which chars are populating hash
text.chars.each do |char|
p    counter[char] += 1                    # confirm chars are counted 


  end
p  counter.to_a.sort_by { |k, v| v }       # established that array was populated with hash pairs
                                           # established sort_by function -> ascending order  
end                                        ###############
                                           initial method 
                                           - correctly populates hash with chars
                                           - sorts k,v pairs by v in ascending order
                                           - chars include white space
                                           - [0][0] index retrieves the k,v pair where v has lowest count
                                           - found the k,v pair with the intended output in position [-2][0]
                                           ###############
                                           new method
                                           - uses regex to include only letters 
                                           - use index to retrieve final k,v pair in array using [-1][0] 

=end                                                       
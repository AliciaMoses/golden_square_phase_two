def get_most_common_letter(text)
   
    counter = Hash.new(0)
    [text.chars]
    text.chars.each do |char|
    if char =~ /[a-z]/i 
      then counter[char] += 1
    end
  end
    p  counter.to_a.sort_by { |k, v| v }[-1][0]
  end
  

  get_most_common_letter("the roof, the roof, the roof is on fire!")   # => "o"



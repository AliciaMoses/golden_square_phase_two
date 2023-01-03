class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      # counter = Hash.new(1)   
      counter = Hash.new(0)
      most_common = nil

      # most_common_count = 1 
      most_common_count = 0
      
      @text.chars.each do |char|
        next unless is_letter?(char)

          # counter = { char => h[kv] or 1  } + 1
          counter[char] = counter[char] + 1  
     
          if counter[char] > most_common_count
            # counter[char] => 2
            most_common = char
            # only return first hash with D test this
            most_common_count = counter[char]
            
          end
        end

      return [most_common_count, most_common]
     
    end
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
end
  
counter = LetterCounter.new("Digital Punk")

counter.calculate_most_common
  
 
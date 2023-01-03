class DiaryEntry
    def initialize(title, contents) 
      @title = title 
      @contents = contents
    end
  
    def title
     return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
       return 0 if @contents.empty?
       return @contents.split(" ").count
    end
  
    def reading_time(wpm) 
      fail "Reading speed cannot be zero wpm!" if wpm == 0
      return (count_words / wpm.to_f).ceil

    end
  
 
    def reading_chunk(wpm, minutes)
      chunk_size = (wpm * minutes).to_f
      number_of_chunks = (count_words / chunk_size).ceil
      Array.new(number_of_chunks)
     
    end
  end


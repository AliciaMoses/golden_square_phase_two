class DiaryEntry
    def initialize(title, contents) # title, contents are strings
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
      return @contents.split(" ").count
    end
  
    def reading_time(wpm) 
      fail "Reading speed cannot be zero wpm!" if wpm == 0
      return (count_words / wpm.to_f).ceil

    end
  
    def reading_chunk(wpm, minutes)
      n = wpm * minutes
     
    end
  end

  new_entry = DiaryEntry.new("test entry", "I have some time to read this long text. I think I can finish it within a minute. But if you add more words, I don't think I will be able to read any more")


  new_entry.count_words

  new_entry.reading_time(18)

  p new_entry.reading_chunk(10, 1).
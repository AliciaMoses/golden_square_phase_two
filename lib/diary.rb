class Diary
    def initialize 
        @entries = []
    end 

    def add(entry)
        @entries << entry
    end 

    def all 
        return @entries
    end 

    def count_words
        return @entries.sum(&:count_words)
    end 


    def reading_time(wpm) 
        fail "Reading speed cannot be zero wpm!" if wpm == 0
        return (count_words / wpm.to_f).ceil
    end


end 
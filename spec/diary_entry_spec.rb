require "diary_entry"

RSpec.describe DiaryEntry do 
    it "constructs" do 
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
    end
    describe "count_words" do 
        it "returns zero if the contents are empty" do
            diary_entry = DiaryEntry.new("title", " ")
            expect(diary_entry.count_words).to eq 0
        end
        it "counts the number of words in a diary entry's contents" do
            diary_entry = DiaryEntry.new("title", "some text here")
            expect(diary_entry.count_words).to eq 3
        end
    end
    describe "reading_time" do 
        it "fails if the reading time given is 0" do
            diary_entry = DiaryEntry.new("title", "some text ")
            expect{diary_entry.reading_time(0)}.to raise_error "Reading speed cannot be zero wpm!"
        end 
        it "returns zero if the contents are empty" do
            diary_entry = DiaryEntry.new("title", " ")
            expect(diary_entry.reading_time(1)).to eq 0
        end
        it "returns the required reading time given the content's word count" do
            diary_entry = DiaryEntry.new("title", "some text here")
            expect(diary_entry.reading_time(1)).to eq 3
        end
    end
end 
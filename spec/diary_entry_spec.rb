require 'diary_entry'

RSpec.describe DiaryEntry do
    it "contructs" do 
        diary_entry = DiaryEntry.new("new_title", "new_contents")
        expect(diary_entry.title).to eq "new_title"
        expect(diary_entry.contents).to eq "new_contents"
    end
   # describe "@count_words" do 
    it "returns the number of words in the contents" do
        diary_entry = DiaryEntry.new("new_title", "some text here")
        expect(diary_entry.count_words).to eq 3
    end
    it "returns zero when contents is empty" do 
        diary_entry = DiaryEntry.new("new_title", "")
        expect(diary_entry.count_words).to eq 0
    end    
    context "given wpm of (200)" do
    it "returns the number of minutes (ceil) required to read contents" do
        diary_entry = DiaryEntry.new("new_title", "there is some text here" * 40 )
        expect(diary_entry.reading_time(200)).to eq 1
        end
    end
    context "given wpm of 0" do
        it "fails" do
            diary_entry = DiaryEntry.new("new_title", "there is some text here")
            expect { diary_entry.reading_time(0) }.to raise_error "Reading speed cannot be zero wpm!"
        end
    end


    context "when contents are readable within the given time " do
        it "returns the full contents" do
            diary_entry = DiaryEntry.new("new_title", "there is some text here")
            
            chunk = diary_entry.reading_chunk(100, 1)
            expect(chunk).to eq "there is some text here"
        end
    context "given contents that require longer than the given reading time" do
    
        it "it returns the maximal readable chunk" do
            diary_entry = DiaryEntry.new("new_title", "there is some text here " * 10)
            chunk = diary_entry.reading_chunk(3, 1)
            expect(chunk).to eq "there is some"
        
        end
    end
end















end





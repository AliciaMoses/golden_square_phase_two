require 'diary'
require 'diary_entry'

RSpec.describe "integration" do

        it "lists the entries added" do 
            diary = Diary.new
            diary_entry = DiaryEntry.new("my_title", "my contents")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
            diary.add(diary_entry)
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry, diary_entry_2]
        end

        describe "word counting behaviour" do 
            it "counts words from all diary entries' contents " do 
                diary = Diary.new
                diary_entry = DiaryEntry.new("my_title", "my contents")
                diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
                diary.add(diary_entry)
                diary.add(diary_entry_2)
                expect(diary.count_words).to eq 5
            end
        end 
        describe "reading time behaviour" do
            it "fails when wmp is zero" do 
                diary = Diary.new 
                diary_entry_1 = DiaryEntry.new("title", "diary contents")
                diary.add(diary_entry_1)
                expect { diary.reading_time(0)}.to raise_error "Reading speed cannot be zero wpm!"
            end
            it "calculates the reading time for all entries " do 
                diary = Diary.new
                diary_entry = DiaryEntry.new("my_title", "my contents")
                diary_entry_2 = DiaryEntry.new("my_title_2", "there is some text")
                diary.add(diary_entry)
                diary.add(diary_entry_2)
                expect(diary.reading_time(3)).to eq 2
            end 
            it "calculates the reading time for all entries where it falls over a minute" do 
                diary = Diary.new
                diary_entry = DiaryEntry.new("my_title", "contents")
                diary_entry_2 = DiaryEntry.new("my_title_2", "here's some text")
                diary.add(diary_entry)
                diary.add(diary_entry_2)
                expect(diary.reading_time(3)).to eq 2
            end 
        end

        describe "optimal reading time behaviour" do 
            it " " do 
            end 
        end
end 
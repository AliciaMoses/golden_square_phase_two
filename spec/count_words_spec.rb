require 'count_words'

RSpec.describe "count_words" do

    context "given an empty string" do
        it "fails" do
            expect { count_words("") }.to raise_error "No text entered"
        end
    end
    context "given a continuous string with no whitespace" do
        it "returns a value of 1" do
            result = count_words("word")
            expect(result).to eq 1
        end
    end
    context "given string that includes whitespace" do
        it "returns the count of words in the string " do
            result = count_words("there are four words")
            expect(result).to eq 4
        end
    end
end
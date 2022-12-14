require 'grammar_stats'

RSpec.describe GrammarStats do
    it "constructs" do 
        grammar_stats = GrammarStats.new()
    end
    describe "@check" do
        it "fails" do
            grammar_stats = GrammarStats.new
            expect{ (grammar_stats.check("")) }.to raise_error "No text to check!"
        end
        it "returns false when the first char is not a capital letter" do
            grammar_stats = GrammarStats.new
            expect(grammar_stats.check("hello, world")).to eq false
        end
        it "returns false when the last char is not a sentence ending punctuation mark" do
            grammar_stats = GrammarStats.new
            expect(grammar_stats.check("Hello, world")).to eq false
        end
        it "returns true when the first char is a capital letter and the last char is a sentence ending punctuation mark" do
            grammar_stats = GrammarStats.new
            expect(grammar_stats.check("Hello, world!")).to eq true 
        end
    end
    describe "@percentage_good" do
        it "should return a prompt if no checks have been made" do
            grammar_stats = GrammarStats.new
            expect(grammar_stats.percentage_good).to eq "No checks have been made yet"
        end
        
        it "should return 0 if the first test is failed" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("this string won't pass...")
            expect(grammar_stats.percentage_good).to eq 0
        end

        it "should return 100 if the first test is passed" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("This text passes.")
            expect(grammar_stats.percentage_good).to eq 100
        end
        
        it "should return 33 if 2 / 3 tests fail" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("this string won't pass...")
            grammar_stats.check("This string won't either")
            grammar_stats.check("But this string will pass!")
            expect(grammar_stats.percentage_good).to eq 33
        end
        it "should return 25 if 1 / 4 tests fail" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("this string won't pass...")
            grammar_stats.check("9this string won't pass")
            grammar_stats.check("THIS STRING WON'T PASS")
            grammar_stats.check("But this string will pass.")
            expect(grammar_stats.percentage_good).to eq 25
        end
        it "should return 100 if all tests pass" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Passable string.")
            grammar_stats.check("A sentence that will also pass the test!")
            grammar_stats.check("Is this string okay?")
            grammar_stats.check("This will pass...")
            expect(grammar_stats.percentage_good).to eq 100
        end 
    end
end


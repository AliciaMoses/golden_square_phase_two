require 'make_snippet'

RSpec.describe "make_snippet method" do

    #create single test for the method
    context "given an empty string" do
        it "fails" do
            expect { make_snippet("") }.to raise_error "No text entered"
        end
  
    end
    context "given more than 4 words" do
        it "returns the string with '...' " do
            result = make_snippet("there are more than four words")
            expect(result).to eq "there are more than four..."
        end
  
    end
    context "given a non empty string that's less than 5 words" do
        it "returns the string" do
            result = make_snippet("there are four words")
            expect(result).to eq "there are four words"
        end
  
    end

end
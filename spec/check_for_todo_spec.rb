
require 'check_for_todo'

RSpec.describe "check_for_todo method" do
    context "given an empty string" do
        it "fails" do
            expect { check_for_todo("") }.to raise_error "No text entered!"
        end
    end
    context "given text that fails to match all chars" do
        it "returns false" do
            result = check_for_todo("asfhjlk!")
            expect(result).to eq false
        end
    end
    context "given text that contains the string that is interrupted by a whitespace char" do
        it "returns false" do
            result = check_for_todo("#TO DO")
            expect(result).to eq false
        end
    end
    context "given text that contains the string that is interrupted by a non-whitespace char" do
        it "returns false" do
            result = check_for_todo("#TOsometextDO")
            expect(result).to eq false
        end
    end
    context "given text that contains the string that is preceded by whitespace" do
        it "returns true" do
            result = check_for_todo(" #TODO")
            expect(result).to eq true
        end
    end
    context "given text that contains the string that is preceded by non whitespace char" do
        it "returns true" do
            result = check_for_todo(" sometext#TODO")
            expect(result).to eq true
        end
    end
    context "given text that contains the multiple entries of the string" do
        it "returns true" do
            result = check_for_todo("#TODO #TODO")
            expect(result).to eq true
        end
    end
end
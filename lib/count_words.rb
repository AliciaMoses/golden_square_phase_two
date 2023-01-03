
def count_words(string)
    fail "No text entered" if string.empty?
    string.split(" ").count
end
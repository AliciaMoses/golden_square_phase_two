def make_snippet(string)
    fail "No text entered" if string.empty?
    string.split.count > 4 ? string.split[0..4].join(" ") + "..." : string 
end

# puts make_snippet("this is some text let's see")

# from the user story
# choose a method name / try to use verbs to describe what the method is doing

# decide on the parameter name and data type

# decide what the return value would be e.g string, bool, int etc

# think of side effects 

# develop tests, nil values, invalid arguments / inputs 
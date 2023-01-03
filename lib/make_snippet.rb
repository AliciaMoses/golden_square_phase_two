def make_snippet(string)
    fail "No text entered" if string.empty?
    string.split.count > 4 ? string.split[0..4].join(" ") + "..." : string 
end


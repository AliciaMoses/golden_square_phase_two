
def check_for_todo(text)
    fail "No text entered!" if text.empty?
    text =~ /#/ ? true : false 
    text =~ /#TO\sDO/ ? false :
    text =~ /#todo/ ? false :
    text =~ /#TODO/ ? true : false 
end